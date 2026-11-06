import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:immich_mobile/demo/demo_data.dart';
// ignore: import_rule_openapi
import 'package:openapi/api.dart';

typedef _Handler = Future<void> Function(HttpRequest request, List<String> params);

/// An in-process fake Immich API used by the demo build (`--dart-define=OPENFRAME_DEMO=true`).
///
/// Serves bundled photos/videos, a full sync stream and plausible responses for every mutation
/// the app performs. State lives in memory and resets on every process start.
class DemoServer {
  DemoServer._(this._server, this.data, this._version);

  static const port = 37283;
  static const baseUrl = 'http://127.0.0.1:$port';
  static const apiUrl = '$baseUrl/api';
  static const accessToken = 'openframe-demo-token';

  final HttpServer _server;
  final DemoData data;
  final (int, int, int, int?) _version;
  final _bytesCache = <String, Uint8List>{};
  final _routes = <(String, RegExp, _Handler)>[];
  final _uploadedBytes = <String, Uint8List>{};
  final _random = Random(7);
  String? _remoteLightStyle;
  String? _remoteDarkStyle;

  static Future<DemoServer> start({required (int, int, int, int?) version}) async {
    final manifestJson = jsonDecode(await rootBundle.loadString('assets/demo/manifest.json')) as Map<String, dynamic>;
    final manifest = <String, ({int w, int h, String? thumbhash, int bytes})>{
      for (final e in manifestJson.entries)
        e.key: (
          w: (e.value['w'] as num).toInt(),
          h: (e.value['h'] as num).toInt(),
          thumbhash: e.value['thumbhash'] as String?,
          bytes: (e.value['bytes'] as num?)?.toInt() ?? 0,
        ),
    };
    final data = DemoData.seed(manifest);
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port, shared: true);
    server.autoCompress = false;
    final demo = DemoServer._(server, data, version);
    demo._registerRoutes();
    server.listen((request) => unawaited(demo._handle(request)));
    debugPrint('[demo] server listening on $apiUrl (${data.assets.length} assets, ${data.albums.length} albums)');
    return demo;
  }

  Future<void> close() => _server.close(force: true);

  // ---------------------------------------------------------------------------
  // Routing
  // ---------------------------------------------------------------------------

  void _on(String method, String pattern, _Handler handler) {
    final regex = RegExp('^/api${pattern.replaceAll(':id', '([^/]+)')}\$');
    _routes.add((method, regex, handler));
  }

  Future<void> _handle(HttpRequest request) async {
    final path = request.uri.path;
    try {
      for (final (method, regex, handler) in _routes) {
        if (method != request.method && !(method == 'GET' && request.method == 'HEAD')) {
          continue;
        }
        final match = regex.firstMatch(path);
        if (match == null) {
          continue;
        }
        final params = [for (var i = 1; i <= match.groupCount; i++) Uri.decodeComponent(match.group(i)!)];
        await handler(request, params);
        return;
      }
      if (path.startsWith('/api/socket.io') || path == '/.well-known/immich') {
        await _empty(request, status: HttpStatus.notFound);
        return;
      }
      debugPrint('[demo] unhandled ${request.method} ${request.uri}');
      await _json(request, {'message': 'Not found (demo)', 'statusCode': 404}, status: HttpStatus.notFound);
    } catch (error, stack) {
      debugPrint('[demo] error handling ${request.method} ${request.uri}: $error\n$stack');
      try {
        await _json(request, {'message': '$error', 'statusCode': 500}, status: HttpStatus.internalServerError);
      } catch (_) {}
    }
  }

  void _registerRoutes() {
    // server
    _on('GET', '/server/ping', (r, _) => _json(r, {'res': 'pong'}));
    _on('GET', '/server/version', (r, _) {
      final (major, minor, patch, pre) = _version;
      return _json(
        r,
        ServerVersionResponseDto(featureLevel: 1, major: major, minor: minor, patch_: patch, prerelease: pre),
      );
    });
    _on('GET', '/server/version-history', (r, _) => _json(r, []));
    _on('GET', '/server/features', (r, _) => _json(r, _features()));
    _on('GET', '/server/config', (r, _) => _json(r, _config()));
    _on('GET', '/server/storage', (r, _) => _json(r, _storage()));
    _on('GET', '/server/about', (r, _) => _json(r, _about()));
    _on('GET', '/server/media-types', (r, _) => _json(r, _mediaTypes()));
    _on('GET', '/server/statistics', (r, _) => _json(r, {'photos': data.assets.length, 'videos': 3, 'usage': 0}));
    _on('GET', '/server/theme', (r, _) => _json(r, {'customCss': ''}));
    _on('GET', '/server/license', (r, _) => _empty(r, status: HttpStatus.notFound));
    _on('GET', '/server/version-check', (r, _) => _json(r, {'checkedAt': null, 'releaseVersion': null}));
    _on('GET', '/demo/map/light.json', (r, _) => _mapStyle(r, dark: false));
    _on('GET', '/demo/map/dark.json', (r, _) => _mapStyle(r, dark: true));

    // auth
    _on('POST', '/auth/login', _login);
    _on('POST', '/auth/logout', (r, _) => _json(r, LogoutResponseDto(redirectUri: '/auth/login', successful: true)));
    _on('POST', '/auth/validateToken', (r, _) => _json(r, ValidateAccessTokenResponseDto(authStatus: true)));
    _on('GET', '/auth/status', (r, _) => _json(r, _authStatus()));
    _on('POST', '/auth/session/unlock', _unlock);
    _on('POST', '/auth/session/lock', (r, _) async {
      data.lockedSessionUnlocked = false;
      await _empty(r, status: HttpStatus.noContent);
    });
    _on('POST', '/auth/pin-code', (r, _) => _empty(r, status: HttpStatus.noContent));
    _on('PUT', '/auth/pin-code', (r, _) => _empty(r, status: HttpStatus.noContent));
    _on('DELETE', '/auth/pin-code', (r, _) => _empty(r, status: HttpStatus.noContent));
    _on('POST', '/auth/change-password', (r, _) => _json(r, _userAdmin()));
    _on('POST', '/oauth/authorize', (r, _) => _json(r, {'url': '$baseUrl/'}, status: HttpStatus.badRequest));

    // users
    _on('GET', '/users/me', (r, _) => _json(r, _userAdmin()));
    _on('PUT', '/users/me', (r, _) async {
      await _body(r);
      await _json(r, _userAdmin());
    });
    _on('GET', '/users/me/preferences', (r, _) => _json(r, _preferences()));
    _on('PUT', '/users/me/preferences', (r, _) async {
      await _body(r);
      await _json(r, _preferences());
    });
    _on('GET', '/users/me/license', (r, _) => _empty(r, status: HttpStatus.notFound));
    _on('GET', '/users', (r, _) => _json(r, data.users.values.where((u) => u.id != data.me.id).map(_user).toList()));
    _on('GET', '/users/:id', (r, p) => _json(r, _user(data.users[p[0]] ?? data.me)));
    _on('GET', '/users/:id/profile-image', _profileImage);
    _on('POST', '/users/profile-image', (r, _) async {
      await r.drain<void>();
      await _json(
        r,
        CreateProfileImageResponseDto(profileChangedAt: DateTime.now(), profileImagePath: '', userId: data.me.id),
      );
    });
    _on('DELETE', '/users/profile-image', (r, _) => _empty(r, status: HttpStatus.noContent));

    // sync
    _on('POST', '/sync/stream', _syncStream);
    _on('POST', '/sync/ack', (r, _) => _drainEmpty(r, HttpStatus.noContent));
    _on('DELETE', '/sync/ack', (r, _) => _drainEmpty(r, HttpStatus.noContent));
    _on('GET', '/sync/ack', (r, _) => _json(r, []));

    // assets
    _on('POST', '/assets', _upload);
    _on('POST', '/assets/bulk-upload-check', _bulkUploadCheck);
    _on('POST', '/assets/exist', (r, _) async {
      await _body(r);
      await _json(r, {'existingIds': <String>[]});
    });
    _on('PUT', '/assets', _updateAssets);
    _on('DELETE', '/assets', _deleteAssets);
    _on('GET', '/assets/statistics', (r, _) => _json(r, _statistics()));
    _on('PUT', '/assets/metadata', (r, _) => _drainJson(r, []));
    _on('GET', '/assets/:id', (r, p) => _withAsset(r, p[0], (a) => _json(r, _assetDto(a))));
    _on('PUT', '/assets/:id', _updateAsset);
    _on('GET', '/assets/:id/thumbnail', _thumbnail);
    _on('GET', '/assets/:id/original', _original);
    _on('GET', '/assets/:id/video/playback', _video);
    _on('GET', '/assets/:id/metadata', (r, _) => _json(r, []));
    _on('PUT', '/assets/:id/metadata', (r, _) => _drainJson(r, []));
    _on('GET', '/assets/:id/edits', (r, p) => _json(r, AssetEditsResponseDto(assetId: p[0])));
    _on('PUT', '/assets/:id/edits', (r, p) => _drainJson(r, AssetEditsResponseDto(assetId: p[0])));
    _on('DELETE', '/assets/:id/edits', (r, _) => _drainEmpty(r, HttpStatus.noContent));
    _on('GET', '/assets/:id/ocr', (r, _) => _json(r, []));

    // trash
    _on('POST', '/trash/restore', (r, _) => _restoreTrash(r, null));
    _on('POST', '/trash/restore/assets', (r, _) async {
      final body = await _body(r);
      await _restoreTrash(r, _strings(body['ids']));
    });
    _on('POST', '/trash/empty', _emptyTrash);

    // albums
    _on('GET', '/albums', (r, _) => _json(r, data.albums.values.map(_albumDto).toList()));
    _on('POST', '/albums', _createAlbum);
    _on('GET', '/albums/statistics', (r, _) => _json(r, {'owned': 6, 'shared': 3, 'notShared': 5}));
    _on('GET', '/albums/:id', (r, p) => _withAlbum(r, p[0], (a) => _json(r, _albumDto(a, withAssets: true))));
    _on('PATCH', '/albums/:id', _updateAlbum);
    _on('DELETE', '/albums/:id', _deleteAlbum);
    _on('PUT', '/albums/:id/assets', (r, p) => _albumAssets(r, p[0], add: true));
    _on('DELETE', '/albums/:id/assets', (r, p) => _albumAssets(r, p[0], add: false));
    _on('PUT', '/albums/:id/users', _addAlbumUsers);
    _on('PUT', '/albums/:id/user/:id', (r, p) => _drainEmpty(r, HttpStatus.ok));
    _on('DELETE', '/albums/:id/user/:id', _removeAlbumUser);

    // activities
    _on('GET', '/activities', _getActivities);
    _on('POST', '/activities', _createActivity);
    _on('GET', '/activities/statistics', (r, _) => _json(r, {'comments': 2, 'likes': 1}));
    _on('DELETE', '/activities/:id', (r, p) async {
      data.activities.removeWhere((a) => a.id == p[0]);
      await _empty(r, status: HttpStatus.noContent);
    });

    // search
    _on('POST', '/search/smart', (r, _) => _search(r, smart: true));
    _on('POST', '/search/metadata', (r, _) => _search(r, smart: false));
    _on('POST', '/search/random', (r, _) async {
      await _body(r);
      await _json(r, (_visibleAssets().toList()..shuffle(_random)).take(20).map(_assetDto).toList());
    });
    _on('GET', '/search/suggestions', _suggestions);
    _on('GET', '/search/explore', _explore);
    _on('GET', '/search/cities', (r, _) => _json(r, _cityAssets().map(_assetDto).toList()));
    _on('GET', '/search/person', _searchPerson);
    _on('GET', '/search/places', _searchPlaces);

    // people
    _on('GET', '/people', (r, _) => _json(r, _peopleList()));
    _on('GET', '/people/:id', (r, p) => _withPerson(r, p[0], (person) => _json(r, _personDto(person))));
    _on('PUT', '/people/:id', _updatePerson);
    _on('PUT', '/people', (r, _) => _drainJson(r, []));
    _on('GET', '/people/:id/thumbnail', _personThumbnail);
    _on('GET', '/people/:id/statistics', (r, p) => _json(r, {'assets': data.faces.where((f) => f.personId == p[0]).length}));
    _on('GET', '/faces', (r, _) => _json(r, []));

    // partners
    _on('GET', '/partners', _getPartners);
    _on('POST', '/partners', _createPartner);
    _on('POST', '/partners/:id', _createPartner);
    _on('PUT', '/partners/:id', _updatePartner);
    _on('DELETE', '/partners/:id', _removePartner);

    // shared links
    _on('GET', '/shared-links', (r, _) => _json(r, data.sharedLinks.values.map(_sharedLinkDto).toList()));
    _on('POST', '/shared-links', _createSharedLink);
    _on('GET', '/shared-links/:id', (r, p) => _withLink(r, p[0], (l) => _json(r, _sharedLinkDto(l))));
    _on('PATCH', '/shared-links/:id', _updateSharedLink);
    _on('DELETE', '/shared-links/:id', (r, p) async {
      data.sharedLinks.remove(p[0]);
      await _empty(r, status: HttpStatus.noContent);
    });

    // stacks
    _on('POST', '/stacks', _createStack);
    _on('DELETE', '/stacks', _deleteStacks);
    _on('DELETE', '/stacks/:id', (r, p) async {
      _removeStack(p[0]);
      await _empty(r, status: HttpStatus.noContent);
    });
    _on('GET', '/stacks/:id', (r, p) {
      final stack = data.stacks[p[0]];
      if (stack == null) {
        return _notFound(r);
      }
      return _json(r, _stackDto(stack));
    });

    // tags
    _on('GET', '/tags', (r, _) => _json(r, data.tags.values.map(_tagDto).toList()));
    _on('PUT', '/tags', _upsertTags);
    _on('PUT', '/tags/assets', _bulkTag);
    _on('PUT', '/tags/:id/assets', (r, p) => _tagAssets(r, p[0], add: true));
    _on('DELETE', '/tags/:id/assets', (r, p) => _tagAssets(r, p[0], add: false));

    // folders
    _on('GET', '/view/folder/unique-paths', (r, _) {
      final paths = _visibleAssets().where((a) => a.ownerId == data.me.id).map((a) => a.folderPath).toSet().toList()
        ..sort();
      return _json(r, paths);
    });
    _on('GET', '/view/folder', (r, _) {
      final path = r.uri.queryParameters['path'] ?? '/';
      final list = _visibleAssets().where((a) => a.ownerId == data.me.id && a.folderPath == path).toList()
        ..sort((a, b) => b.takenAt.compareTo(a.takenAt));
      return _json(r, list.map(_assetDto).toList());
    });

    // sessions & misc
    _on('POST', '/sessions', _createSession);
    _on('GET', '/sessions', (r, _) => _json(r, []));
    _on('DELETE', '/sessions', (r, _) => _empty(r, status: HttpStatus.noContent));
    _on('POST', '/sessions/:id/lock', (r, _) => _empty(r, status: HttpStatus.noContent));
    _on('GET', '/notifications', (r, _) => _json(r, []));
    _on('PUT', '/notifications', (r, _) => _drainEmpty(r, HttpStatus.noContent));
    _on('GET', '/memories', (r, _) => _json(r, []));
    _on('PUT', '/memories/:id', (r, p) => _updateMemory(r, p[0]));
    _on('GET', '/map/markers', (r, _) => _json(r, _mapMarkers()));
    _on('GET', '/map/reverse-geocode', (r, _) => _json(r, []));
    _on('GET', '/timeline/buckets', (r, _) => _json(r, []));
    _on('POST', '/download/info', (r, _) => _drainJson(r, {'totalSize': 0, 'archives': []}));
    _on('GET', '/duplicates', (r, _) => _json(r, []));
    _on('GET', '/libraries', (r, _) => _json(r, []));
  }

  // ---------------------------------------------------------------------------
  // Response helpers
  // ---------------------------------------------------------------------------

  Future<void> _json(HttpRequest request, Object? body, {int status = HttpStatus.ok}) async {
    final response = request.response
      ..statusCode = status
      ..headers.contentType = ContentType.json;
    response.add(utf8.encode(jsonEncode(body)));
    await response.close();
  }

  Future<void> _drainJson(HttpRequest request, Object? body) async {
    await request.drain<void>();
    await _json(request, body);
  }

  Future<void> _empty(HttpRequest request, {int status = HttpStatus.ok}) async {
    request.response.statusCode = status;
    await request.response.close();
  }

  Future<void> _drainEmpty(HttpRequest request, int status) async {
    await request.drain<void>();
    await _empty(request, status: status);
  }

  Future<void> _notFound(HttpRequest request) =>
      _json(request, {'message': 'Not found', 'statusCode': 404}, status: HttpStatus.notFound);

  Future<Map<String, dynamic>> _body(HttpRequest request) async {
    final text = await utf8.decodeStream(request);
    if (text.trim().isEmpty) {
      return {};
    }
    final decoded = jsonDecode(text);
    return decoded is Map<String, dynamic> ? decoded : {'_': decoded};
  }

  List<String> _strings(Object? value) => value is List ? value.map((e) => e.toString()).toList() : const [];

  Future<Uint8List?> _asset(String path) async {
    final cached = _bytesCache[path];
    if (cached != null) {
      return cached;
    }
    try {
      final bytes = (await rootBundle.load(path)).buffer.asUint8List();
      _bytesCache[path] = bytes;
      return bytes;
    } catch (_) {
      return null;
    }
  }

  Future<void> _bytes(HttpRequest request, Uint8List bytes, ContentType type, {bool range = false}) async {
    final response = request.response;
    response.headers
      ..contentType = type
      ..set(HttpHeaders.cacheControlHeader, 'private, max-age=86400')
      ..set(HttpHeaders.acceptRangesHeader, 'bytes');
    final rangeHeader = request.headers.value(HttpHeaders.rangeHeader);
    if (range && rangeHeader != null && rangeHeader.startsWith('bytes=')) {
      final spec = rangeHeader.substring(6).split(',').first.split('-');
      var start = int.tryParse(spec[0]) ?? 0;
      var end = spec.length > 1 && spec[1].isNotEmpty ? int.parse(spec[1]) : bytes.length - 1;
      if (spec[0].isEmpty && spec.length > 1) {
        // suffix range: last N bytes
        start = bytes.length - (int.tryParse(spec[1]) ?? 0);
        end = bytes.length - 1;
      }
      end = min(end, bytes.length - 1);
      if (start > end || start >= bytes.length) {
        response
          ..statusCode = HttpStatus.requestedRangeNotSatisfiable
          ..headers.set(HttpHeaders.contentRangeHeader, 'bytes */${bytes.length}');
        await response.close();
        return;
      }
      response
        ..statusCode = HttpStatus.partialContent
        ..headers.set(HttpHeaders.contentRangeHeader, 'bytes $start-$end/${bytes.length}')
        ..contentLength = end - start + 1;
      if (request.method != 'HEAD') {
        response.add(Uint8List.sublistView(bytes, start, end + 1));
      }
      await response.close();
      return;
    }
    response
      ..statusCode = HttpStatus.ok
      ..contentLength = bytes.length;
    if (request.method != 'HEAD') {
      response.add(bytes);
    }
    await response.close();
  }

  // ---------------------------------------------------------------------------
  // DTO builders
  // ---------------------------------------------------------------------------

  UserAvatarColor _color(String c) => UserAvatarColor.values.firstWhere((e) => e.toString() == c);

  String _profilePath(DemoUser u) => u.avatar == null ? '' : '/demo/profile/${u.key}.jpg';

  UserResponseDto _user(DemoUser u) => UserResponseDto(
    avatarColor: _color(u.color),
    email: u.email,
    id: u.id,
    name: u.name,
    profileChangedAt: u.profileChangedAt,
    profileImagePath: _profilePath(u),
  );

  UserAdminResponseDto _userAdmin() {
    final me = data.me;
    return UserAdminResponseDto(
      avatarColor: _color(me.color),
      clusterGroupId: '',
      createdAt: DateTime.utc(2023, 1, 1),
      deletedAt: null,
      email: me.email,
      id: me.id,
      isAdmin: true,
      license: null,
      name: me.name,
      oauthId: '',
      profileChangedAt: me.profileChangedAt,
      profileImagePath: _profilePath(me),
      quotaSizeInBytes: null,
      quotaUsageInBytes: _usedBytes(),
      shouldChangePassword: false,
      status: UserStatus.active,
      storageLabel: 'alex',
      updatedAt: DateTime.utc(2026, 1, 1),
    );
  }

  int _usedBytes() => data.assetsOwnedBy(data.me.id).fold(0, (sum, a) => sum + a.fileSize * 9);

  UserPreferencesResponseDto _preferences() => UserPreferencesResponseDto(
    albums: AlbumsResponse(defaultAssetOrder: AssetOrder.desc),
    cast: CastResponse(gCastEnabled: false),
    download: DownloadResponse(archiveSize: 4294967296, includeEmbeddedVideos: false),
    emailNotifications: EmailNotificationsResponse(albumInvite: true, albumUpdate: true, enabled: true),
    folders: FoldersResponse(enabled: true, sidebarWeb: false),
    memories: MemoriesResponse(duration: 5, enabled: true, sidebarWeb: false),
    people: PeopleResponse(enabled: true, sidebarWeb: false, updateStrategy: PersonUpdateStrategy.self),
    purchase: PurchaseResponse(hideBuyButtonUntil: '2100-01-01T00:00:00.000Z', showSupportBadge: false),
    ratings: RatingsResponse(enabled: true),
    recentlyAdded: RecentlyAddedResponse(sidebarWeb: false),
    sharedLinks: SharedLinksResponse(enabled: true, sidebarWeb: false),
    tags: TagsResponse(enabled: true, sidebarWeb: false),
  );

  ServerFeaturesDto _features() => ServerFeaturesDto(
    configFile: false,
    duplicateDetection: true,
    email: false,
    facialRecognition: true,
    importFaces: false,
    map: true,
    oauth: false,
    oauthAutoLaunch: false,
    ocr: true,
    passwordLogin: true,
    realtimeTranscoding: false,
    reverseGeocoding: true,
    search: true,
    sidecar: false,
    smartSearch: true,
    trash: true,
  );

  ServerConfigDto _config() => ServerConfigDto(
    externalDomain: '',
    isInitialized: true,
    isOnboarded: true,
    loginPageMessage: 'OpenFrame demo — sign in with any email and password.',
    maintenanceMode: false,
    mapDarkStyleUrl: '$apiUrl/demo/map/dark.json',
    mapLightStyleUrl: '$apiUrl/demo/map/light.json',
    minFaces: 1,
    oauthButtonText: '',
    publicUsers: true,
    trashDays: 30,
    userDeleteDelay: 7,
  );

  ServerStorageResponseDto _storage() {
    const size = 2 * 1024 * 1024 * 1024 * 1024;
    final used = (size * 0.37).round() + _usedBytes();
    String fmt(int b) => '${(b / (1024 * 1024 * 1024)).toStringAsFixed(1)} GiB';
    return ServerStorageResponseDto(
      diskAvailable: fmt(size - used),
      diskAvailableRaw: size - used,
      diskSize: fmt(size),
      diskSizeRaw: size,
      diskUsagePercentage: double.parse((used / size * 100).toStringAsFixed(2)),
      diskUse: fmt(used),
      diskUseRaw: used,
    );
  }

  ServerAboutResponseDto _about() {
    final (major, minor, patch, _) = _version;
    return ServerAboutResponseDto(
      licensed: true,
      version: 'v$major.$minor.$patch',
      versionUrl: 'https://github.com/YashasVM/OpenFrame',
      build: const Optional.present('OpenFrame demo (on-device mock server)'),
      repository: const Optional.present('YashasVM/OpenFrame'),
      repositoryUrl: const Optional.present('https://github.com/YashasVM/OpenFrame'),
    );
  }

  Map<String, Object> _mediaTypes() => {
    'image': ['.jpg', '.jpeg', '.png', '.heic', '.heif', '.webp', '.gif', '.dng', '.avif'],
    'video': ['.mp4', '.mov', '.webm', '.3gp', '.mkv'],
    'sidecar': ['.xmp'],
  };

  AuthStatusResponseDto _authStatus() =>
      AuthStatusResponseDto(isElevated: data.lockedSessionUnlocked, password: true, pinCode: true);

  ExifResponseDto _exif(DemoAsset a) {
    final place = a.place;
    final cam = a.camera;
    final seed = a.id.codeUnits.fold<int>(0, (x, c) => (x * 17 + c) & 0x7fffffff);
    double jitter(int shift) => (((seed >> shift) & 0xff) / 255.0 - 0.5) * 0.02;
    return ExifResponseDto(
      city: Optional.present(place?.city),
      state: Optional.present(place?.state),
      country: Optional.present(place?.country),
      latitude: Optional.present(place == null ? null : place.lat + jitter(0)),
      longitude: Optional.present(place == null ? null : place.lng + jitter(8)),
      dateTimeOriginal: Optional.present(a.takenAt),
      modifyDate: Optional.present(a.takenAt),
      description: Optional.present(a.description ?? ''),
      exifImageWidth: Optional.present(a.width),
      exifImageHeight: Optional.present(a.height),
      fileSizeInByte: Optional.present(a.fileSize),
      make: Optional.present(cam?.make),
      model: Optional.present(cam?.model),
      lensModel: Optional.present(cam?.lens),
      fNumber: Optional.present(a.key == null ? null : const [1.8, 2.8, 4.0, 5.6, 8.0][seed % 5]),
      focalLength: Optional.present(a.key == null ? null : const [24.0, 35.0, 50.0, 85.0, 6.765][seed % 5]),
      iso: Optional.present(a.key == null ? null : const [100, 200, 400, 800, 1600][(seed >> 3) % 5]),
      exposureTime: Optional.present(a.key == null ? null : const ['1/250', '1/125', '1/60', '1/1000', '1/30'][(seed >> 5) % 5]),
      orientation: const Optional.present('1'),
      projectionType: const Optional.present(null),
      rating: Optional.present(a.rating),
      timeZone: const Optional.present('UTC'),
    );
  }

  AssetResponseDto _assetDto(DemoAsset a) {
    final stack = a.stackId == null ? null : data.stacks[a.stackId];
    final owner = data.users[a.ownerId];
    return AssetResponseDto(
      checksum: a.checksum,
      createdAt: a.takenAt.add(const Duration(minutes: 3)),
      duration: a.durationMs,
      exifInfo: Optional.present(_exif(a)),
      fileCreatedAt: a.takenAt,
      fileModifiedAt: a.takenAt,
      hasMetadata: true,
      height: a.height,
      width: a.width,
      id: a.id,
      isArchived: a.visibility == 'archive',
      isEdited: false,
      isFavorite: a.isFavorite,
      isOffline: false,
      isTrashed: a.deletedAt != null,
      localDateTime: a.takenAt,
      originalFileName: a.fileName,
      originalMimeType: Optional.present(a.uploadedMime ?? (a.isVideo ? 'video/mp4' : 'image/jpeg')),
      originalPath: a.originalPath,
      owner: owner == null ? const Optional.absent() : Optional.present(_user(owner)),
      ownerId: a.ownerId,
      people: Optional.present(data.peopleInAsset(a.id).map(_personDto).toList()),
      tags: Optional.present(data.tagsOf(a.id).map(_tagDto).toList()),
      stack: stack == null
          ? const Optional.absent()
          : Optional.present(
              AssetStackResponseDto(id: stack.id, primaryAssetId: stack.primaryAssetId, assetCount: stack.assetIds.length),
            ),
      thumbhash: a.thumbhash,
      type: a.isVideo ? AssetTypeEnum.VIDEO : AssetTypeEnum.IMAGE,
      updatedAt: a.updatedAt,
      visibility: _visibility(a.visibility),
    );
  }

  AssetVisibility _visibility(String v) => AssetVisibility.values.firstWhere((e) => e.toString() == v);

  AlbumResponseDto _albumDto(DemoAlbum album, {bool withAssets = false}) {
    final assets = data.albumAssets(album)..sort((a, b) => a.takenAt.compareTo(b.takenAt));
    final owner = data.users[album.ownerId]!;
    return AlbumResponseDto(
      albumName: album.name,
      albumThumbnailAssetId: album.thumbnailAssetId,
      albumUsers: [
        AlbumUserResponseDto(role: AlbumUserRole.owner, user: _user(owner)),
        for (final e in album.sharedWith.entries)
          if (data.users[e.key] != null)
            AlbumUserResponseDto(
              role: e.value == 'viewer' ? AlbumUserRole.viewer : AlbumUserRole.editor,
              user: _user(data.users[e.key]!),
            ),
      ],
      assetCount: assets.length,
      createdAt: album.createdAt,
      description: album.description,
      hasSharedLink: data.sharedLinks.values.any((l) => l.albumId == album.id),
      id: album.id,
      isActivityEnabled: album.isActivityEnabled,
      shared: album.sharedWith.isNotEmpty,
      updatedAt: album.updatedAt,
      startDate: assets.isEmpty ? const Optional.absent() : Optional.present(assets.first.takenAt),
      endDate: assets.isEmpty ? const Optional.absent() : Optional.present(assets.last.takenAt),
      lastModifiedAssetTimestamp: assets.isEmpty ? const Optional.absent() : Optional.present(album.updatedAt),
      order: Optional.present(album.order == 'asc' ? AssetOrder.asc : AssetOrder.desc),
    );
  }

  PersonResponseDto _personDto(DemoPerson p) => PersonResponseDto(
    birthDate: p.birthDate,
    id: p.id,
    isHidden: p.isHidden,
    name: p.name,
    thumbnailPath: '/demo/people/${p.key}.jpg',
    isFavorite: Optional.present(p.isFavorite),
    updatedAt: Optional.present(p.updatedAt),
  );

  TagResponseDto _tagDto(DemoTag t) => TagResponseDto(
    createdAt: DateTime.utc(2025, 1, 1),
    id: t.id,
    name: t.name,
    value: t.value,
    updatedAt: DateTime.utc(2025, 1, 1),
    parentId: Optional.present(t.parentValue == null ? null : data.tags[t.parentValue]?.id),
  );

  StackResponseDto _stackDto(DemoStack s) => StackResponseDto(
    id: s.id,
    primaryAssetId: s.primaryAssetId,
    assets: s.assetIds.map((id) => data.assets[id]).whereType<DemoAsset>().map(_assetDto).toList(),
  );

  SharedLinkResponseDto _sharedLinkDto(DemoSharedLink l) {
    final album = l.albumId == null ? null : data.albums[l.albumId];
    return SharedLinkResponseDto(
      allowDownload: l.allowDownload,
      allowUpload: l.allowUpload,
      createdAt: l.createdAt,
      description: l.description,
      expiresAt: l.expiresAt,
      id: l.id,
      key: l.key,
      password: l.password,
      showMetadata: l.showMetadata,
      slug: l.slug,
      type: album != null ? SharedLinkType.ALBUM : SharedLinkType.INDIVIDUAL,
      userId: data.me.id,
      album: album == null ? const Optional.absent() : Optional.present(_albumDto(album)),
      assets: l.assetIds.map((id) => data.assets[id]).whereType<DemoAsset>().map(_assetDto).toList(),
    );
  }

  PartnerResponseDto _partnerDto(DemoUser u, {bool? inTimeline}) => PartnerResponseDto(
    avatarColor: _color(u.color),
    email: u.email,
    id: u.id,
    name: u.name,
    profileChangedAt: u.profileChangedAt,
    profileImagePath: _profilePath(u),
    inTimeline: Optional.present(inTimeline),
  );

  ActivityResponseDto _activityDto(DemoActivity a) => ActivityResponseDto(
    assetId: a.assetId,
    createdAt: a.createdAt,
    id: a.id,
    type: a.isLike ? ReactionType.like : ReactionType.comment,
    user: _user(data.users[a.userId] ?? data.me),
    comment: a.isLike ? const Optional.absent() : Optional.present(a.comment),
  );

  // ---------------------------------------------------------------------------
  // Queries
  // ---------------------------------------------------------------------------

  Iterable<DemoAsset> _visibleAssets() =>
      data.assets.values.where((a) => a.deletedAt == null && a.visibility == 'timeline' && data.canSee(a));

  List<DemoAsset> _cityAssets() {
    final byCity = <String, DemoAsset>{};
    for (final a in _visibleAssets()) {
      final city = a.place?.city;
      if (city != null) {
        byCity.putIfAbsent(city, () => a);
      }
    }
    return byCity.values.toList();
  }

  List<Map<String, Object?>> _mapMarkers() => [
    for (final a in _visibleAssets())
      if (a.place != null)
        {
          'id': a.id,
          'lat': a.place!.lat,
          'lon': a.place!.lng,
          'city': a.place!.city,
          'state': a.place!.state,
          'country': a.place!.country,
        },
  ];

  Map<String, int> _statistics() {
    final mine = data.assetsOwnedBy(data.me.id).where((a) => a.deletedAt == null);
    final images = mine.where((a) => !a.isVideo).length;
    final videos = mine.where((a) => a.isVideo).length;
    return {'images': images, 'videos': videos, 'total': images + videos};
  }

  Map<String, Object> _peopleList() {
    final list = data.people.values.toList()
      ..sort((a, b) => data.faces.where((f) => f.personId == b.id).length - data.faces.where((f) => f.personId == a.id).length);
    return {
      'people': list.map(_personDto).toList(),
      'total': list.length,
      'hidden': list.where((p) => p.isHidden).length,
      'hasNextPage': false,
    };
  }

  // ---------------------------------------------------------------------------
  // Handlers
  // ---------------------------------------------------------------------------

  Future<void> _withAsset(HttpRequest r, String id, Future<void> Function(DemoAsset) fn) {
    final asset = data.assets[id];
    if (asset == null) {
      return _notFound(r);
    }
    return fn(asset);
  }

  Future<void> _withAlbum(HttpRequest r, String id, Future<void> Function(DemoAlbum) fn) {
    final album = data.albums[id];
    if (album == null) {
      return _notFound(r);
    }
    return fn(album);
  }

  Future<void> _withPerson(HttpRequest r, String id, Future<void> Function(DemoPerson) fn) {
    final person = data.people[id];
    if (person == null) {
      return _notFound(r);
    }
    return fn(person);
  }

  Future<void> _withLink(HttpRequest r, String id, Future<void> Function(DemoSharedLink) fn) {
    final link = data.sharedLinks[id];
    if (link == null) {
      return _notFound(r);
    }
    return fn(link);
  }

  Future<void> _login(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final email = (body['email'] as String?)?.trim() ?? '';
    final password = body['password'] as String? ?? '';
    if (email.isEmpty || password.isEmpty) {
      await _json(r, {'message': 'Incorrect email or password', 'statusCode': 401}, status: HttpStatus.unauthorized);
      return;
    }
    final me = data.me;
    await _json(
      r,
      LoginResponseDto(
        accessToken: accessToken,
        isAdmin: true,
        isOnboarded: true,
        name: me.name,
        profileImagePath: _profilePath(me),
        shouldChangePassword: false,
        userEmail: me.email,
        userId: me.id,
      ),
      status: HttpStatus.created,
    );
  }

  Future<void> _unlock(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final pin = body['pinCode']?.toString();
    if (pin != null && pin != DemoData.pinCode) {
      await _json(r, {'message': 'Wrong PIN code (demo PIN is ${DemoData.pinCode})', 'statusCode': 400}, status: 400);
      return;
    }
    data.lockedSessionUnlocked = true;
    await _empty(r, status: HttpStatus.noContent);
  }

  Future<void> _profileImage(HttpRequest r, List<String> p) async {
    final user = data.users[p[0]];
    final bytes = user?.avatar == null ? null : await _asset('assets/demo/people/${user!.avatar}.jpg');
    if (bytes == null) {
      return _notFound(r);
    }
    await _bytes(r, bytes, ContentType('image', 'jpeg'));
  }

  Future<void> _thumbnail(HttpRequest r, List<String> p) => _withAsset(r, p[0], (a) async {
    final uploaded = _uploadedBytes[a.id];
    if (uploaded != null) {
      return _bytes(r, uploaded, ContentType.parse(a.uploadedMime ?? 'image/jpeg'));
    }
    final size = r.uri.queryParameters['size'] ?? 'thumbnail';
    final folder = size == 'thumbnail' ? 'thumb' : 'preview';
    final bytes = await _asset('assets/demo/$folder/${a.key}.jpg');
    if (bytes == null) {
      return _notFound(r);
    }
    final type = size == 'thumbnail' ? ContentType('image', 'webp') : ContentType('image', 'jpeg');
    // The bundled thumbnails are jpeg; advertise the real type.
    await _bytes(r, bytes, size == 'thumbnail' ? ContentType('image', 'jpeg') : type);
  });

  Future<void> _original(HttpRequest r, List<String> p) => _withAsset(r, p[0], (a) async {
    final uploaded = _uploadedBytes[a.id];
    if (uploaded != null) {
      return _bytes(r, uploaded, ContentType.parse(a.uploadedMime ?? 'application/octet-stream'), range: true);
    }
    if (a.isVideo) {
      return _video(r, p);
    }
    final bytes = await _asset('assets/demo/preview/${a.key}.jpg');
    if (bytes == null) {
      return _notFound(r);
    }
    r.response.headers.set('Content-Disposition', 'attachment; filename="${a.fileName}"');
    await _bytes(r, bytes, ContentType('image', 'jpeg'), range: true);
  });

  Future<void> _video(HttpRequest r, List<String> p) => _withAsset(r, p[0], (a) async {
    final uploaded = _uploadedBytes[a.id];
    if (uploaded != null) {
      return _bytes(r, uploaded, ContentType.parse(a.uploadedMime ?? 'video/mp4'), range: true);
    }
    final bytes = a.isVideo ? await _asset('assets/demo/video/${a.key}.mp4') : null;
    if (bytes == null) {
      return _notFound(r);
    }
    await _bytes(r, bytes, ContentType('video', 'mp4'), range: true);
  });

  Future<void> _personThumbnail(HttpRequest r, List<String> p) =>
      _withPerson(r, p[0], (person) async {
        final bytes = await _asset('assets/demo/people/${person.key}.jpg');
        if (bytes == null) {
          return _notFound(r);
        }
        await _bytes(r, bytes, ContentType('image', 'jpeg'));
      });

  Future<void> _mapStyle(HttpRequest r, {required bool dark}) async {
    var style = dark ? _remoteDarkStyle : _remoteLightStyle;
    if (style == null) {
      final client = HttpClient()..connectionTimeout = const Duration(seconds: 4);
      try {
        final req = await client.getUrl(
          Uri.parse('https://tiles.openfreemap.org/styles/${dark ? 'dark' : 'liberty'}'),
        );
        final res = await req.close().timeout(const Duration(seconds: 6));
        if (res.statusCode == 200) {
          style = await utf8.decodeStream(res).timeout(const Duration(seconds: 6));
          if (dark) {
            _remoteDarkStyle = style;
          } else {
            _remoteLightStyle = style;
          }
        } else {
          await res.drain<void>();
        }
      } catch (e) {
        debugPrint('[demo] map style offline fallback: $e');
      } finally {
        client.close(force: true);
      }
    }
    style ??= jsonEncode({
      'version': 8,
      'name': 'OpenFrame demo (offline)',
      'sources': <String, Object>{},
      'layers': [
        {
          'id': 'background',
          'type': 'background',
          'paint': {'background-color': dark ? '#1b1d22' : '#e9eef2'},
        },
      ],
    });
    final response = r.response
      ..statusCode = HttpStatus.ok
      ..headers.contentType = ContentType.json;
    response.add(utf8.encode(style));
    await response.close();
  }

  // ---- sync ----

  Future<void> _syncStream(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final types = _strings(body['types']).toSet();
    final events = <String>[];
    var seq = 0;
    void emit(String type, Object data) {
      events.add(jsonEncode({'type': type, 'data': data, 'ack': '$type|demo|${seq++}'}));
    }

    final me = data.me;
    final visibleAlbums = data.albums.values
        .where((a) => a.ownerId == me.id || a.sharedWith.containsKey(me.id))
        .toList();

    if (types.contains('AuthUsersV2') || types.contains('AuthUsersV1')) {
      final v2 = types.contains('AuthUsersV2');
      final dto = SyncAuthUserV2(
        avatarColor: Optional.present(_color(me.color)),
        deletedAt: null,
        email: me.email,
        hasProfileImage: me.avatar != null,
        id: me.id,
        isAdmin: true,
        name: me.name,
        oauthId: '',
        pinCode: 'set',
        profileChangedAt: me.profileChangedAt,
        quotaSizeInBytes: null,
        quotaUsageInBytes: _usedBytes(),
        storageLabel: 'alex',
      );
      emit(v2 ? 'AuthUserV2' : 'AuthUserV1', dto.toJson());
    }
    if (types.contains('UsersV1')) {
      for (final u in data.users.values) {
        emit(
          'UserV1',
          SyncUserV1(
            avatarColor: Optional.present(_color(u.color)),
            deletedAt: null,
            email: u.email,
            hasProfileImage: u.avatar != null,
            id: u.id,
            name: u.name,
            profileChangedAt: u.profileChangedAt,
          ).toJson(),
        );
      }
    }
    if (types.contains('PartnersV1')) {
      for (final e in data.partners.entries) {
        emit('PartnerV1', SyncPartnerV1(inTimeline: e.value, sharedById: e.key.$1, sharedWithId: e.key.$2).toJson());
      }
    }
    if (types.contains('AssetsV2')) {
      for (final a in data.assetsOwnedBy(me.id)) {
        emit('AssetV2', _syncAsset(a).toJson());
      }
    }
    if (types.contains('StacksV1')) {
      for (final s in data.stacks.values.where((s) => s.ownerId == me.id)) {
        emit('StackV1', _syncStack(s).toJson());
      }
    }
    final partnerOwners = data.partners.keys.where((k) => k.$2 == me.id).map((k) => k.$1).toSet();
    if (types.contains('PartnerAssetsV2')) {
      for (final owner in partnerOwners) {
        for (final a in data.assetsOwnedBy(owner)) {
          emit('PartnerAssetV2', _syncAsset(a).toJson());
        }
      }
    }
    final albumForeignAssets = <String, DemoAsset>{};
    for (final album in visibleAlbums) {
      for (final id in album.assetIds) {
        final asset = data.assets[id];
        if (asset != null && asset.ownerId != me.id) {
          albumForeignAssets[id] = asset;
        }
      }
    }
    if (types.contains('AlbumAssetsV2')) {
      for (final a in albumForeignAssets.values) {
        emit('AlbumAssetCreateV2', _syncAsset(a).toJson());
      }
    }
    if (types.contains('AlbumsV2')) {
      for (final album in visibleAlbums) {
        emit(
          'AlbumV2',
          SyncAlbumV2(
            createdAt: album.createdAt,
            description: album.description,
            id: album.id,
            isActivityEnabled: album.isActivityEnabled,
            name: album.name,
            order: album.order == 'asc' ? AssetOrder.asc : AssetOrder.desc,
            thumbnailAssetId: album.thumbnailAssetId,
            updatedAt: album.updatedAt,
          ).toJson(),
        );
      }
    }
    if (types.contains('AlbumUsersV1')) {
      for (final album in visibleAlbums) {
        emit('AlbumUserV1', SyncAlbumUserV1(albumId: album.id, role: AlbumUserRole.owner, userId: album.ownerId).toJson());
        for (final e in album.sharedWith.entries) {
          emit(
            'AlbumUserV1',
            SyncAlbumUserV1(
              albumId: album.id,
              role: e.value == 'viewer' ? AlbumUserRole.viewer : AlbumUserRole.editor,
              userId: e.key,
            ).toJson(),
          );
        }
      }
    }
    if (types.contains('AlbumToAssetsV1')) {
      for (final album in visibleAlbums) {
        for (final id in album.assetIds) {
          emit('AlbumToAssetV1', SyncAlbumToAssetV1(albumId: album.id, assetId: id).toJson());
        }
      }
    }
    if (types.contains('AssetExifsV1')) {
      for (final a in data.assetsOwnedBy(me.id)) {
        emit('AssetExifV1', _syncExif(a).toJson());
      }
    }
    if (types.contains('PartnerAssetExifsV1')) {
      for (final owner in partnerOwners) {
        for (final a in data.assetsOwnedBy(owner)) {
          emit('PartnerAssetExifV1', _syncExif(a).toJson());
        }
      }
    }
    if (types.contains('AlbumAssetExifsV1')) {
      for (final a in albumForeignAssets.values) {
        emit('AlbumAssetExifCreateV1', _syncExif(a).toJson());
      }
    }
    if (types.contains('MemoriesV2') || types.contains('MemoriesV1')) {
      final type = types.contains('MemoriesV2') ? 'MemoryV2' : 'MemoryV1';
      for (final m in data.memories) {
        emit(
          type,
          SyncMemoryV2(
            createdAt: m.memoryAt,
            data: {'year': m.year},
            deletedAt: null,
            hideAt: m.showAt.add(const Duration(days: 3)),
            id: m.id,
            isSaved: m.isSaved,
            memoryAt: m.memoryAt,
            ownerId: me.id,
            seenAt: m.seenAt,
            showAt: m.showAt,
            type: MemoryType.onThisDay,
            updatedAt: data.now,
          ).toJson(),
        );
      }
    }
    if (types.contains('MemoryToAssetsV2') || types.contains('MemoryToAssetsV1')) {
      final type = types.contains('MemoryToAssetsV2') ? 'MemoryToAssetV2' : 'MemoryToAssetV1';
      for (final m in data.memories) {
        for (final id in m.assetIds) {
          emit(type, SyncMemoryAssetV1(assetId: id, memoryId: m.id).toJson());
        }
      }
    }
    if (types.contains('PeopleV1')) {
      for (final p in data.people.values) {
        emit(
          'PersonV1',
          SyncPersonV1(
            birthDate: p.birthDate,
            color: null,
            createdAt: DateTime.utc(2024, 1, 1),
            faceAssetId: p.faceAssetId,
            id: p.id,
            isFavorite: p.isFavorite,
            isHidden: p.isHidden,
            name: p.name,
            ownerId: me.id,
            updatedAt: p.updatedAt,
          ).toJson(),
        );
      }
    }
    final faceType = types.contains('AssetFacesV3')
        ? 'AssetFaceV3'
        : types.contains('AssetFacesV2')
        ? 'AssetFaceV2'
        : types.contains('AssetFacesV1')
        ? 'AssetFaceV1'
        : null;
    if (faceType != null) {
      for (final f in data.faces) {
        final json = SyncAssetFaceV3(
          assetId: f.assetId,
          boundingBoxX1: f.x1,
          boundingBoxX2: f.x2,
          boundingBoxY1: f.y1,
          boundingBoxY2: f.y2,
          deletedAt: null,
          id: f.id,
          imageHeight: f.imageHeight,
          imageWidth: f.imageWidth,
          isVisible: true,
          personId: f.personId,
          sourceType: 'machine-learning',
        ).toJson();
        if (faceType == 'AssetFaceV1') {
          json.remove('deletedAt');
          json.remove('isVisible');
        }
        emit(faceType, json);
      }
    }
    for (final t in data.tombstones) {
      emit(t.type, t.data);
    }
    emit('SyncCompleteV1', <String, Object>{});

    final response = r.response
      ..statusCode = HttpStatus.ok
      ..headers.contentType = ContentType('application', 'jsonlines+json', charset: 'utf-8');
    response.add(utf8.encode('${events.join('\n')}\n'));
    await response.close();
  }

  SyncAssetV2 _syncAsset(DemoAsset a) => SyncAssetV2(
    checksum: a.checksum,
    createdAt: a.takenAt.add(const Duration(minutes: 3)),
    deletedAt: a.deletedAt,
    duration: a.durationMs,
    fileCreatedAt: a.takenAt,
    fileModifiedAt: a.takenAt,
    height: a.height,
    id: a.id,
    isEdited: false,
    isFavorite: a.isFavorite,
    libraryId: null,
    livePhotoVideoId: null,
    localDateTime: a.takenAt,
    originalFileName: a.fileName,
    ownerId: a.ownerId,
    stackId: a.stackId,
    thumbhash: a.thumbhash,
    type: a.isVideo ? AssetTypeEnum.VIDEO : AssetTypeEnum.IMAGE,
    visibility: _visibility(a.visibility),
    width: a.width,
  );

  SyncAssetExifV1 _syncExif(DemoAsset a) {
    final exif = _exif(a);
    return SyncAssetExifV1(
      assetId: a.id,
      city: exif.city.orElse(null),
      country: exif.country.orElse(null),
      dateTimeOriginal: exif.dateTimeOriginal.orElse(null),
      description: exif.description.orElse(null),
      exifImageHeight: a.height,
      exifImageWidth: a.width,
      exposureTime: exif.exposureTime.orElse(null),
      fNumber: exif.fNumber.orElse(null),
      fileSizeInByte: a.fileSize,
      focalLength: exif.focalLength.orElse(null),
      fps: a.isVideo ? 25 : null,
      iso: exif.iso.orElse(null),
      latitude: exif.latitude.orElse(null),
      lensModel: exif.lensModel.orElse(null),
      longitude: exif.longitude.orElse(null),
      make: exif.make.orElse(null),
      model: exif.model.orElse(null),
      modifyDate: a.takenAt,
      orientation: '1',
      profileDescription: null,
      projectionType: null,
      rating: a.rating,
      state: exif.state.orElse(null),
      timeZone: 'UTC',
    );
  }

  SyncStackV1 _syncStack(DemoStack s) => SyncStackV1(
    createdAt: DateTime.utc(2025, 2, 16),
    id: s.id,
    ownerId: s.ownerId,
    primaryAssetId: s.primaryAssetId,
    updatedAt: DateTime.utc(2025, 2, 16),
  );

  // ---- asset mutations ----

  void _applyAssetUpdate(DemoAsset a, Map<String, dynamic> body) {
    if (body['isFavorite'] is bool) {
      a.isFavorite = body['isFavorite'] as bool;
    }
    if (body['visibility'] is String) {
      a.visibility = body['visibility'] as String;
    }
    if (body['isArchived'] is bool) {
      a.visibility = (body['isArchived'] as bool) ? 'archive' : 'timeline';
    }
    if (body['description'] is String) {
      a.description = body['description'] as String;
    }
    if (body.containsKey('rating')) {
      final rating = (body['rating'] as num?)?.toInt();
      a.rating = rating == null || rating <= 0 ? null : rating;
    }
    final date = body['dateTimeOriginal'];
    if (date is String) {
      final parsed = DateTime.tryParse(date);
      if (parsed != null) {
        a.takenAt = parsed.toUtc();
      }
    }
    if (body['latitude'] is num && body['longitude'] is num) {
      a.place = DemoPlace(
        a.place?.city ?? 'Unknown',
        a.place?.state,
        a.place?.country ?? 'Unknown',
        (body['latitude'] as num).toDouble(),
        (body['longitude'] as num).toDouble(),
        a.place?.folder ?? 'Camera',
      );
    }
    a.updatedAt = DateTime.now().toUtc();
  }

  Future<void> _updateAssets(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    for (final id in _strings(body['ids'])) {
      final asset = data.assets[id];
      if (asset != null) {
        _applyAssetUpdate(asset, body);
      }
    }
    await _empty(r, status: HttpStatus.noContent);
  }

  Future<void> _updateAsset(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final asset = data.assets[p[0]];
    if (asset == null) {
      return _notFound(r);
    }
    _applyAssetUpdate(asset, body);
    await _json(r, _assetDto(asset));
  }

  void _removeAssetCompletely(DemoAsset a) {
    data.assets.remove(a.id);
    _uploadedBytes.remove(a.id);
    data.tombstone('AssetDeleteV1', {'assetId': a.id});
    for (final album in data.albums.values) {
      album.assetIds.remove(a.id);
    }
    data.faces.removeWhere((f) => f.assetId == a.id);
  }

  Future<void> _deleteAssets(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final force = body['force'] == true;
    for (final id in _strings(body['ids'])) {
      final asset = data.assets[id];
      if (asset == null) {
        continue;
      }
      if (force) {
        _removeAssetCompletely(asset);
      } else {
        asset.deletedAt = DateTime.now().toUtc();
        asset.updatedAt = asset.deletedAt!;
      }
    }
    await _empty(r, status: HttpStatus.noContent);
  }

  Future<void> _restoreTrash(HttpRequest r, List<String>? ids) async {
    if (ids == null) {
      await r.drain<void>();
    }
    var count = 0;
    for (final a in data.assets.values) {
      if (a.deletedAt != null && (ids == null || ids.contains(a.id))) {
        a.deletedAt = null;
        a.updatedAt = DateTime.now().toUtc();
        count++;
      }
    }
    await _json(r, TrashResponseDto(count: count));
  }

  Future<void> _emptyTrash(HttpRequest r, List<String> _) async {
    await r.drain<void>();
    final trashed = data.assets.values.where((a) => a.deletedAt != null && a.ownerId == data.me.id).toList();
    trashed.forEach(_removeAssetCompletely);
    await _json(r, TrashResponseDto(count: trashed.length));
  }

  Future<void> _bulkUploadCheck(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final assets = body['assets'] is List ? body['assets'] as List : const [];
    final checksums = {for (final a in data.assets.values) a.checksum: a.id};
    await _json(r, {
      'results': [
        for (final item in assets.whereType<Map<String, dynamic>>())
          if (checksums.containsKey(item['checksum']))
            {'id': item['id'], 'action': 'reject', 'reason': 'duplicate', 'assetId': checksums[item['checksum']]}
          else
            {'id': item['id'], 'action': 'accept'},
      ],
    });
  }

  Future<void> _upload(HttpRequest r, List<String> _) async {
    final contentType = r.headers.contentType;
    final boundary = contentType?.parameters['boundary'];
    final builder = BytesBuilder(copy: false);
    await for (final chunk in r) {
      builder.add(chunk);
    }
    final body = builder.takeBytes();
    final fields = <String, String>{};
    Uint8List? file;
    String? fileName;
    String? fileMime;
    if (boundary != null) {
      for (final part in _parseMultipart(body, boundary)) {
        final disposition = part.headers['content-disposition'] ?? '';
        final name = RegExp(r'name="([^"]*)"').firstMatch(disposition)?.group(1);
        final filename = RegExp(r'filename="([^"]*)"').firstMatch(disposition)?.group(1);
        if (filename != null) {
          file = part.body;
          fileName = filename;
          fileMime = part.headers['content-type'];
        } else if (name != null) {
          fields[name] = utf8.decode(part.body, allowMalformed: true);
        }
      }
    }
    if (file == null) {
      await _json(r, {'message': 'No file', 'statusCode': 400}, status: HttpStatus.badRequest);
      return;
    }
    final checksum = base64.encode(sha1.convert(file).bytes);
    final existing = data.assets.values.where((a) => a.checksum == checksum).firstOrNull;
    if (existing != null) {
      await _json(r, AssetMediaResponseDto(id: existing.id, status: AssetMediaStatus.duplicate));
      return;
    }
    final name = fields['filename'] ?? fileName ?? 'upload.jpg';
    final lower = name.toLowerCase();
    final isVideo = (fileMime ?? '').startsWith('video') || lower.endsWith('.mp4') || lower.endsWith('.mov');
    final mime = fileMime != null && fileMime != 'application/octet-stream'
        ? fileMime
        : isVideo
        ? 'video/mp4'
        : lower.endsWith('.png')
        ? 'image/png'
        : 'image/jpeg';
    final takenAt = DateTime.tryParse(fields['fileCreatedAt'] ?? '')?.toUtc() ?? DateTime.now().toUtc();
    final id = demoId('upload/$checksum');
    final asset = DemoAsset(
      id: id,
      key: null,
      ownerId: data.me.id,
      takenAt: takenAt,
      width: 0,
      height: 0,
      thumbhash: null,
      fileName: name,
      checksum: checksum,
      keywords: const ['upload'],
      isVideo: isVideo,
      durationMs: isVideo ? 0 : null,
      isFavorite: fields['isFavorite'] == 'true',
      visibility: fields['visibility'] ?? 'timeline',
      fileSize: file.length,
      uploadedBytes: file,
      uploadedMime: mime,
    )..updatedAt = DateTime.now().toUtc();
    data.assets[id] = asset;
    _uploadedBytes[id] = file;
    debugPrint('[demo] received upload $name (${file.length} bytes)');
    await _json(r, AssetMediaResponseDto(id: id, status: AssetMediaStatus.created), status: HttpStatus.created);
  }

  // ---- albums ----

  Future<void> _createAlbum(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final id = demoId('album/new/${DateTime.now().microsecondsSinceEpoch}');
    final assetIds = _strings(body['assetIds']).where(data.assets.containsKey).toList();
    final album = DemoAlbum(
      id: id,
      name: (body['albumName'] as String?) ?? 'Untitled',
      description: (body['description'] as String?) ?? '',
      ownerId: data.me.id,
      assetIds: assetIds,
      thumbnailAssetId: assetIds.firstOrNull,
      createdAt: DateTime.now().toUtc(),
    );
    final users = body['albumUsers'] is List ? body['albumUsers'] as List : const [];
    for (final u in users.whereType<Map<String, dynamic>>()) {
      album.sharedWith[u['userId'] as String] = (u['role'] as String?) ?? 'editor';
    }
    data.albums[id] = album;
    await _json(r, _albumDto(album), status: HttpStatus.created);
  }

  Future<void> _updateAlbum(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final album = data.albums[p[0]];
    if (album == null) {
      return _notFound(r);
    }
    if (body['albumName'] is String) {
      album.name = body['albumName'] as String;
    }
    if (body.containsKey('description')) {
      album.description = (body['description'] as String?) ?? '';
    }
    if (body['albumThumbnailAssetId'] is String) {
      album.thumbnailAssetId = body['albumThumbnailAssetId'] as String;
    }
    if (body['isActivityEnabled'] is bool) {
      album.isActivityEnabled = body['isActivityEnabled'] as bool;
    }
    if (body['order'] is String) {
      album.order = body['order'] as String;
    }
    album.updatedAt = DateTime.now().toUtc();
    await _json(r, _albumDto(album));
  }

  Future<void> _deleteAlbum(HttpRequest r, List<String> p) async {
    await r.drain<void>();
    if (data.albums.remove(p[0]) != null) {
      data.tombstone('AlbumDeleteV1', {'albumId': p[0]});
    }
    await _empty(r, status: HttpStatus.noContent);
  }

  Future<void> _albumAssets(HttpRequest r, String albumId, {required bool add}) async {
    final body = await _body(r);
    final album = data.albums[albumId];
    if (album == null) {
      return _notFound(r);
    }
    final results = <BulkIdResponseDto>[];
    for (final id in _strings(body['ids'])) {
      if (add) {
        if (album.assetIds.contains(id)) {
          results.add(
            BulkIdResponseDto(id: id, success: false, error: const Optional.present(BulkIdErrorReason.duplicate)),
          );
        } else if (!data.assets.containsKey(id)) {
          results.add(
            BulkIdResponseDto(id: id, success: false, error: const Optional.present(BulkIdErrorReason.notFound)),
          );
        } else {
          album.assetIds.add(id);
          album.thumbnailAssetId ??= id;
          data.tombstones.removeWhere((t) => t.type == 'AlbumToAssetDeleteV1' && t.data['assetId'] == id && t.data['albumId'] == albumId);
          results.add(BulkIdResponseDto(id: id, success: true));
        }
      } else {
        if (album.assetIds.remove(id)) {
          data.tombstone('AlbumToAssetDeleteV1', {'albumId': albumId, 'assetId': id});
          if (album.thumbnailAssetId == id) {
            album.thumbnailAssetId = album.assetIds.firstOrNull;
          }
          results.add(BulkIdResponseDto(id: id, success: true));
        } else {
          results.add(
            BulkIdResponseDto(id: id, success: false, error: const Optional.present(BulkIdErrorReason.notFound)),
          );
        }
      }
    }
    album.updatedAt = DateTime.now().toUtc();
    await _json(r, results);
  }

  Future<void> _addAlbumUsers(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final album = data.albums[p[0]];
    if (album == null) {
      return _notFound(r);
    }
    final users = body['albumUsers'] is List ? body['albumUsers'] as List : const [];
    for (final u in users.whereType<Map<String, dynamic>>()) {
      album.sharedWith[u['userId'] as String] = (u['role'] as String?) ?? 'editor';
    }
    await _json(r, _albumDto(album));
  }

  Future<void> _removeAlbumUser(HttpRequest r, List<String> p) async {
    await r.drain<void>();
    final album = data.albums[p[0]];
    if (album == null) {
      return _notFound(r);
    }
    final userId = p[1] == 'me' ? data.me.id : p[1];
    album.sharedWith.remove(userId);
    data.tombstone('AlbumUserDeleteV1', {'albumId': album.id, 'userId': userId});
    if (userId == data.me.id) {
      data.tombstone('AlbumDeleteV1', {'albumId': album.id});
    }
    await _empty(r, status: HttpStatus.noContent);
  }

  // ---- activities ----

  Future<void> _getActivities(HttpRequest r, List<String> _) {
    final albumId = r.uri.queryParameters['albumId'];
    final assetId = r.uri.queryParameters['assetId'];
    final list = data.activities
        .where((a) => a.albumId == albumId && (assetId == null || a.assetId == assetId))
        .map(_activityDto)
        .toList();
    return _json(r, list);
  }

  Future<void> _createActivity(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final activity = DemoActivity(
      id: demoId('activity/new/${DateTime.now().microsecondsSinceEpoch}'),
      albumId: body['albumId'] as String,
      assetId: body['assetId'] as String?,
      userId: data.me.id,
      comment: body['type'] == 'comment' ? body['comment'] as String? ?? '' : null,
      createdAt: DateTime.now().toUtc(),
    );
    data.activities.add(activity);
    await _json(r, _activityDto(activity), status: HttpStatus.created);
  }

  // ---- search ----

  Future<void> _search(HttpRequest r, {required bool smart}) async {
    final body = await _body(r);
    final page = (body['page'] as num?)?.toInt() ?? 1;
    final size = (body['size'] as num?)?.toInt() ?? 100;
    final visibility = body['visibility'] as String?;
    Iterable<DemoAsset> results = data.assets.values.where(
      (a) => a.deletedAt == null && data.canSee(a) && a.visibility == (visibility ?? 'timeline'),
    );

    String? str(String key) {
      final v = body[key];
      return v is String && v.isNotEmpty ? v : null;
    }

    final city = str('city');
    final state = str('state');
    final country = str('country');
    final make = str('make');
    final model = str('model');
    if (city != null) {
      results = results.where((a) => a.place?.city == city);
    }
    if (state != null) {
      results = results.where((a) => a.place?.state == state);
    }
    if (country != null) {
      results = results.where((a) => a.place?.country == country);
    }
    if (make != null) {
      results = results.where((a) => a.camera?.make == make);
    }
    if (model != null) {
      results = results.where((a) => a.camera?.model == model);
    }
    if (body['isFavorite'] == true) {
      results = results.where((a) => a.isFavorite);
    }
    if (body['type'] == 'IMAGE') {
      results = results.where((a) => !a.isVideo);
    }
    if (body['type'] == 'VIDEO') {
      results = results.where((a) => a.isVideo);
    }
    if (body['isNotInAlbum'] == true) {
      results = results.where((a) => !data.albums.values.any((al) => al.assetIds.contains(a.id)));
    }
    final rating = (body['rating'] as num?)?.toInt();
    if (rating != null) {
      results = results.where((a) => (a.rating ?? 0) >= rating);
    }
    final after = DateTime.tryParse(str('takenAfter') ?? '');
    final before = DateTime.tryParse(str('takenBefore') ?? '');
    if (after != null) {
      results = results.where((a) => !a.takenAt.isBefore(after));
    }
    if (before != null) {
      results = results.where((a) => !a.takenAt.isAfter(before));
    }
    final personIds = _strings(body['personIds']);
    if (personIds.isNotEmpty) {
      results = results.where((a) {
        final inAsset = data.faces.where((f) => f.assetId == a.id).map((f) => f.personId).toSet();
        return personIds.every(inAsset.contains);
      });
    }
    final tagIds = _strings(body['tagIds']);
    if (tagIds.isNotEmpty) {
      final tagged = data.tags.values.where((t) => tagIds.contains(t.id)).expand((t) => t.assetIds).toSet();
      results = results.where((a) => tagged.contains(a.id));
    }
    final fileName = str('originalFileName');
    if (fileName != null) {
      results = results.where((a) => a.fileName.toLowerCase().contains(fileName.toLowerCase()));
    }
    final description = str('description');
    if (description != null) {
      results = results.where((a) => (a.description ?? '').toLowerCase().contains(description.toLowerCase()));
    }
    final ocr = str('ocr');
    if (ocr != null) {
      results = const [];
    }

    var list = results.toList();
    final query = smart ? str('query') : null;
    final queryAssetId = smart ? str('queryAssetId') : null;
    if (query != null || queryAssetId != null) {
      final words = query != null
          ? query.toLowerCase().split(RegExp(r'[^a-z0-9]+')).where((w) => w.length > 1).toList()
          : data.assets[queryAssetId]?.keywords ?? const <String>[];
      int score(DemoAsset a) {
        final haystack = [
          ...a.keywords,
          ...(a.description ?? '').toLowerCase().split(' '),
          (a.place?.city ?? '').toLowerCase(),
          (a.place?.country ?? '').toLowerCase(),
          ...data.peopleInAsset(a.id).map((p) => p.name.toLowerCase().split(' ').first),
        ];
        var s = 0;
        for (final w in words) {
          for (final h in haystack) {
            if (h == w) {
              s += 3;
            } else if (h.startsWith(w) || (w.length > 3 && w.startsWith(h) && h.length > 3)) {
              s += 1;
            }
          }
        }
        return s;
      }

      final scored = [for (final a in list) (a, score(a))]..sort((x, y) => y.$2.compareTo(x.$2));
      final matches = scored.where((e) => e.$2 > 0).map((e) => e.$1).toList();
      // Smart search always returns something: nearest neighbours by similarity.
      list = matches.isNotEmpty ? matches : (list..shuffle(Random(query.hashCode))).take(12).toList();
      if (queryAssetId != null) {
        list.removeWhere((a) => a.id == queryAssetId);
      }
    } else {
      list.sort((a, b) => b.takenAt.compareTo(a.takenAt));
    }

    final start = (page - 1) * size;
    final pageItems = list.skip(start).take(size).toList();
    final hasMore = start + size < list.length;
    await _json(
      r,
      SearchResponseDto(
        albums: SearchAlbumResponseDto(count: 0, total: 0),
        assets: SearchAssetResponseDto(
          count: pageItems.length,
          total: list.length,
          items: pageItems.map(_assetDto).toList(),
          nextPage: hasMore ? '${page + 1}' : null,
          nextCursor: null,
        ),
      ),
    );
  }

  Future<void> _suggestions(HttpRequest r, List<String> _) {
    final q = r.uri.queryParameters;
    final type = q['type'];
    Iterable<DemoAsset> assets = data.assets.values.where((a) => data.canSee(a));
    if (q['country'] != null) {
      assets = assets.where((a) => a.place?.country == q['country']);
    }
    if (q['state'] != null) {
      assets = assets.where((a) => a.place?.state == q['state']);
    }
    if (q['make'] != null) {
      assets = assets.where((a) => a.camera?.make == q['make']);
    }
    if (q['model'] != null) {
      assets = assets.where((a) => a.camera?.model == q['model']);
    }
    final values = switch (type) {
      'country' => assets.map((a) => a.place?.country),
      'state' => assets.map((a) => a.place?.state),
      'city' => assets.map((a) => a.place?.city),
      'camera-make' => assets.map((a) => a.camera?.make),
      'camera-model' => assets.map((a) => a.camera?.model),
      'camera-lens-model' => assets.map((a) => a.camera?.lens),
      _ => const Iterable<String?>.empty(),
    };
    final list = values.whereType<String>().toSet().toList()..sort();
    return _json(r, list);
  }

  Future<void> _explore(HttpRequest r, List<String> _) {
    final cities = _cityAssets();
    final explore = [
      SearchExploreResponseDto(
        fieldName: 'exifInfo.city',
        items: cities.map((a) => SearchExploreItem(value: a.place!.city, data: _assetDto(a))).toList(),
      ),
      SearchExploreResponseDto(
        fieldName: 'smartInfo.tags',
        items: [
          for (final tag in const ['mountain', 'beach', 'dog', 'food', 'city', 'flowers'])
            if (_visibleAssets().where((a) => a.keywords.contains(tag)).firstOrNull case final a?)
              SearchExploreItem(value: tag, data: _assetDto(a)),
        ],
      ),
    ];
    return _json(r, explore);
  }

  Future<void> _searchPerson(HttpRequest r, List<String> _) {
    final name = (r.uri.queryParameters['name'] ?? '').toLowerCase();
    final list = data.people.values.where((p) => p.name.toLowerCase().contains(name)).map(_personDto).toList();
    return _json(r, list);
  }

  Future<void> _searchPlaces(HttpRequest r, List<String> _) {
    final name = (r.uri.queryParameters['name'] ?? '').toLowerCase();
    final seen = <String>{};
    final list = [
      for (final a in data.assets.values)
        if (a.place case final place? when place.city.toLowerCase().contains(name) && seen.add(place.city))
          {
            'name': place.city,
            'admin1name': place.state,
            'admin2name': null,
            'latitude': place.lat,
            'longitude': place.lng,
          },
    ];
    return _json(r, list);
  }

  // ---- people ----

  Future<void> _updatePerson(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final person = data.people[p[0]];
    if (person == null) {
      return _notFound(r);
    }
    if (body['name'] is String) {
      person.name = body['name'] as String;
    }
    if (body.containsKey('birthDate')) {
      person.birthDate = DateTime.tryParse(body['birthDate']?.toString() ?? '');
    }
    if (body['isHidden'] is bool) {
      person.isHidden = body['isHidden'] as bool;
    }
    if (body['isFavorite'] is bool) {
      person.isFavorite = body['isFavorite'] as bool;
    }
    if (body['featureFaceAssetId'] is String) {
      person.faceAssetId = body['featureFaceAssetId'] as String;
    }
    person.updatedAt = DateTime.now().toUtc();
    await _json(r, _personDto(person));
  }

  // ---- partners ----

  Future<void> _getPartners(HttpRequest r, List<String> _) {
    final direction = r.uri.queryParameters['direction'];
    final me = data.me.id;
    final list = <PartnerResponseDto>[];
    for (final e in data.partners.entries) {
      if (direction == 'shared-with' && e.key.$2 == me) {
        list.add(_partnerDto(data.users[e.key.$1]!, inTimeline: e.value));
      } else if (direction != 'shared-with' && e.key.$1 == me) {
        list.add(_partnerDto(data.users[e.key.$2]!, inTimeline: e.value));
      }
    }
    return _json(r, list);
  }

  Future<void> _createPartner(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final id = p.isNotEmpty ? p[0] : body['sharedWithId'] as String?;
    final user = data.users[id];
    if (user == null) {
      return _notFound(r);
    }
    data.partners[(data.me.id, user.id)] = false;
    data.tombstones.removeWhere((t) => t.type == 'PartnerDeleteV1' && t.data['sharedWithId'] == user.id);
    await _json(r, _partnerDto(user, inTimeline: false), status: HttpStatus.created);
  }

  Future<void> _updatePartner(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final user = data.users[p[0]];
    if (user == null) {
      return _notFound(r);
    }
    final inTimeline = body['inTimeline'] == true;
    data.partners[(user.id, data.me.id)] = inTimeline;
    await _json(r, _partnerDto(user, inTimeline: inTimeline));
  }

  Future<void> _removePartner(HttpRequest r, List<String> p) async {
    await r.drain<void>();
    if (data.partners.remove((data.me.id, p[0])) != null) {
      data.tombstone('PartnerDeleteV1', {'sharedById': data.me.id, 'sharedWithId': p[0]});
    }
    await _empty(r, status: HttpStatus.noContent);
  }

  // ---- shared links ----

  Future<void> _createSharedLink(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final id = demoId('link/new/${DateTime.now().microsecondsSinceEpoch}');
    final link = DemoSharedLink(
      id: id,
      key: base64Url.encode(List.generate(18, (_) => _random.nextInt(256))).replaceAll('=', ''),
      createdAt: DateTime.now().toUtc(),
      albumId: body['albumId'] as String?,
      assetIds: _strings(body['assetIds']),
      description: body['description'] as String?,
      expiresAt: DateTime.tryParse(body['expiresAt']?.toString() ?? ''),
      allowDownload: body['allowDownload'] != false,
      allowUpload: body['allowUpload'] == true,
      showMetadata: body['showMetadata'] != false,
      password: body['password'] as String?,
      slug: body['slug'] as String?,
    );
    data.sharedLinks[id] = link;
    await _json(r, _sharedLinkDto(link), status: HttpStatus.created);
  }

  Future<void> _updateSharedLink(HttpRequest r, List<String> p) async {
    final body = await _body(r);
    final link = data.sharedLinks[p[0]];
    if (link == null) {
      return _notFound(r);
    }
    if (body.containsKey('description')) {
      link.description = body['description'] as String?;
    }
    if (body.containsKey('expiresAt')) {
      link.expiresAt = DateTime.tryParse(body['expiresAt']?.toString() ?? '');
    }
    if (body['allowDownload'] is bool) {
      link.allowDownload = body['allowDownload'] as bool;
    }
    if (body['allowUpload'] is bool) {
      link.allowUpload = body['allowUpload'] as bool;
    }
    if (body['showMetadata'] is bool) {
      link.showMetadata = body['showMetadata'] as bool;
    }
    if (body.containsKey('password')) {
      link.password = body['password'] as String?;
    }
    if (body.containsKey('slug')) {
      link.slug = body['slug'] as String?;
    }
    await _json(r, _sharedLinkDto(link));
  }

  // ---- stacks ----

  Future<void> _createStack(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final ids = _strings(body['assetIds']).where(data.assets.containsKey).toList();
    if (ids.length < 2) {
      await _json(r, {'message': 'Need at least 2 assets', 'statusCode': 400}, status: HttpStatus.badRequest);
      return;
    }
    for (final id in ids) {
      final existing = data.assets[id]!.stackId;
      if (existing != null) {
        _removeStack(existing);
      }
    }
    final stack = DemoStack(demoId('stack/new/${DateTime.now().microsecondsSinceEpoch}'), data.me.id, ids.first, ids);
    data.stacks[stack.id] = stack;
    for (final id in ids) {
      data.assets[id]!
        ..stackId = stack.id
        ..updatedAt = DateTime.now().toUtc();
    }
    await _json(r, _stackDto(stack), status: HttpStatus.created);
  }

  void _removeStack(String id) {
    final stack = data.stacks.remove(id);
    if (stack == null) {
      return;
    }
    for (final assetId in stack.assetIds) {
      data.assets[assetId]
        ?..stackId = null
        ..updatedAt = DateTime.now().toUtc();
    }
    data.tombstone('StackDeleteV1', {'stackId': id});
  }

  Future<void> _deleteStacks(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    _strings(body['ids']).forEach(_removeStack);
    await _empty(r, status: HttpStatus.noContent);
  }

  // ---- tags ----

  Future<void> _upsertTags(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final result = <TagResponseDto>[];
    for (final value in _strings(body['tags'])) {
      final parts = value.split('/');
      for (var i = 1; i <= parts.length; i++) {
        final v = parts.take(i).join('/');
        data.tags.putIfAbsent(v, () => DemoTag(v));
      }
      result.add(_tagDto(data.tags[value]!));
    }
    await _json(r, result);
  }

  Future<void> _bulkTag(HttpRequest r, List<String> _) async {
    final body = await _body(r);
    final assetIds = _strings(body['assetIds']);
    final tagIds = _strings(body['tagIds']);
    var count = 0;
    for (final tag in data.tags.values.where((t) => tagIds.contains(t.id))) {
      for (final id in assetIds) {
        if (tag.assetIds.add(id)) {
          count++;
        }
      }
    }
    await _json(r, TagBulkAssetsResponseDto(count: count));
  }

  Future<void> _tagAssets(HttpRequest r, String tagId, {required bool add}) async {
    final body = await _body(r);
    final tag = data.tags.values.where((t) => t.id == tagId).firstOrNull;
    final results = <BulkIdResponseDto>[];
    for (final id in _strings(body['ids'])) {
      final ok = tag != null && (add ? tag.assetIds.add(id) : tag.assetIds.remove(id));
      results.add(BulkIdResponseDto(id: id, success: ok));
    }
    await _json(r, results);
  }

  // ---- misc ----

  Future<void> _createSession(HttpRequest r, List<String> _) async {
    await r.drain<void>();
    final now = DateTime.now().toUtc().toIso8601String();
    await _json(
      r,
      SessionCreateResponseDto(
        appVersion: null,
        createdAt: now,
        current: false,
        deviceOS: 'Android',
        deviceType: 'Cast',
        id: demoId('session/${DateTime.now().microsecondsSinceEpoch}'),
        isPendingSyncReset: false,
        token: accessToken,
        updatedAt: now,
      ),
      status: HttpStatus.created,
    );
  }

  Future<void> _updateMemory(HttpRequest r, String id) async {
    final body = await _body(r);
    final memory = data.memories.where((m) => m.id == id).firstOrNull;
    if (memory == null) {
      return _notFound(r);
    }
    if (body['seenAt'] != null) {
      memory.seenAt = DateTime.tryParse(body['seenAt'].toString());
    }
    if (body['isSaved'] is bool) {
      memory.isSaved = body['isSaved'] as bool;
    }
    await _json(r, {'id': memory.id});
  }
}

class _Part {
  _Part(this.headers, this.body);

  final Map<String, String> headers;
  final Uint8List body;
}

/// Minimal multipart/form-data parser (enough for the app's upload requests).
List<_Part> _parseMultipart(Uint8List body, String boundary) {
  final delimiter = utf8.encode('--$boundary');
  final parts = <_Part>[];

  int indexOf(List<int> pattern, int from) {
    outer:
    for (var i = from; i <= body.length - pattern.length; i++) {
      for (var j = 0; j < pattern.length; j++) {
        if (body[i + j] != pattern[j]) {
          continue outer;
        }
      }
      return i;
    }
    return -1;
  }

  var pos = indexOf(delimiter, 0);
  final headerEnd = utf8.encode('\r\n\r\n');
  while (pos >= 0) {
    var start = pos + delimiter.length;
    if (start + 1 < body.length && body[start] == 45 && body[start + 1] == 45) {
      break; // closing "--"
    }
    start += 2; // CRLF
    final headersEnd = indexOf(headerEnd, start);
    if (headersEnd < 0) {
      break;
    }
    final headers = <String, String>{};
    for (final line in utf8.decode(body.sublist(start, headersEnd), allowMalformed: true).split('\r\n')) {
      final idx = line.indexOf(':');
      if (idx > 0) {
        headers[line.substring(0, idx).trim().toLowerCase()] = line.substring(idx + 1).trim();
      }
    }
    final next = indexOf(delimiter, headersEnd + 4);
    if (next < 0) {
      break;
    }
    final contentEnd = next - 2; // strip CRLF before the delimiter
    parts.add(_Part(headers, Uint8List.sublistView(body, headersEnd + 4, max(headersEnd + 4, contentEnd))));
    pos = next;
  }
  return parts;
}
