import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:immich_mobile/demo/demo_server.dart';
import 'package:openapi/api.dart';

/// Round-trips every demo endpoint the app uses through the generated OpenAPI parsers, so the
/// demo build cannot drift from the real DTO shapes.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = null;

  late DemoServer server;
  late ApiClient client;

  setUpAll(() async {
    server = await DemoServer.start(version: (3, 3, 0, null));
    client = ApiClient(basePath: DemoServer.apiUrl)..client = http.Client();
  });

  tearDownAll(() => server.close());

  test('server + user endpoints parse', () async {
    expect(await ServerApi(client).pingServer(), isNotNull);
    expect((await ServerApi(client).getServerVersion())!.minor, 3);
    expect(await ServerApi(client).getServerFeatures(), isNotNull);
    expect(await ServerApi(client).getServerConfig(), isNotNull);
    expect(await ServerApi(client).getStorage(), isNotNull);
    expect(await ServerApi(client).getAboutInfo(), isNotNull);
    expect(await UsersApi(client).getMyUser(), isNotNull);
    expect(await UsersApi(client).getMyPreferences(), isNotNull);
    expect(
      await AuthenticationApi(client).login(LoginCredentialDto(email: 'a@b.c', password: 'x')),
      isNotNull,
    );
    expect((await AuthenticationApi(client).validateAccessToken())!.authStatus, isTrue);
    expect((await AuthenticationApi(client).getAuthStatus())!.pinCode, isTrue);
    await expectLater(
      AuthenticationApi(client).unlockAuthSession(SessionUnlockDto(pinCode: const Optional.present('000000'))),
      throwsA(isA<ApiException>()),
    );
    await AuthenticationApi(client).unlockAuthSession(SessionUnlockDto(pinCode: const Optional.present('123456')));
    expect((await AuthenticationApi(client).getAuthStatus())!.isElevated, isTrue);
  });

  test('sync stream emits parseable events for every requested type', () async {
    final types = [
      SyncRequestType.authUsersV2,
      SyncRequestType.usersV1,
      SyncRequestType.assetsV2,
      SyncRequestType.assetExifsV1,
      SyncRequestType.partnersV1,
      SyncRequestType.partnerAssetsV2,
      SyncRequestType.partnerAssetExifsV1,
      SyncRequestType.albumsV2,
      SyncRequestType.albumUsersV1,
      SyncRequestType.albumAssetsV2,
      SyncRequestType.albumAssetExifsV1,
      SyncRequestType.albumToAssetsV1,
      SyncRequestType.memoriesV2,
      SyncRequestType.memoryToAssetsV2,
      SyncRequestType.stacksV1,
      SyncRequestType.peopleV1,
      SyncRequestType.assetFacesV3,
    ];
    final res = await http.post(
      Uri.parse('${DemoServer.apiUrl}/sync/stream'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(SyncStreamDto(types: types).toJson()),
    );
    expect(res.statusCode, 200);
    final parsers = <SyncEntityType, Object? Function(Object)>{
      SyncEntityType.authUserV2: SyncAuthUserV2.fromJson,
      SyncEntityType.userV1: SyncUserV1.fromJson,
      SyncEntityType.partnerV1: SyncPartnerV1.fromJson,
      SyncEntityType.assetV2: SyncAssetV2.fromJson,
      SyncEntityType.partnerAssetV2: SyncAssetV2.fromJson,
      SyncEntityType.albumAssetCreateV2: SyncAssetV2.fromJson,
      SyncEntityType.assetExifV1: SyncAssetExifV1.fromJson,
      SyncEntityType.partnerAssetExifV1: SyncAssetExifV1.fromJson,
      SyncEntityType.albumAssetExifCreateV1: SyncAssetExifV1.fromJson,
      SyncEntityType.albumV2: SyncAlbumV2.fromJson,
      SyncEntityType.albumUserV1: SyncAlbumUserV1.fromJson,
      SyncEntityType.albumToAssetV1: SyncAlbumToAssetV1.fromJson,
      SyncEntityType.memoryV2: SyncMemoryV2.fromJson,
      SyncEntityType.memoryToAssetV2: SyncMemoryAssetV1.fromJson,
      SyncEntityType.stackV1: SyncStackV1.fromJson,
      SyncEntityType.personV1: SyncPersonV1.fromJson,
      SyncEntityType.assetFaceV3: SyncAssetFaceV3.fromJson,
      SyncEntityType.syncCompleteV1: (_) => true,
    };
    final counts = <SyncEntityType, int>{};
    for (final line in const LineSplitter().convert(res.body)) {
      final json = jsonDecode(line) as Map<String, dynamic>;
      final type = SyncEntityType.fromJson(json['type'])!;
      final parser = parsers[type];
      expect(parser, isNotNull, reason: 'unexpected type $type');
      expect(parser!(json['data'] as Object), isNotNull, reason: 'failed to parse $line');
      counts[type] = (counts[type] ?? 0) + 1;
    }
    expect(counts[SyncEntityType.assetV2], greaterThan(60));
    expect(counts[SyncEntityType.albumV2], greaterThanOrEqualTo(8));
    expect(counts[SyncEntityType.personV1], 6);
    expect(counts[SyncEntityType.syncCompleteV1], 1);
  });

  test('asset, album, search and misc endpoints parse', () async {
    final syncRes = await http.post(
      Uri.parse('${DemoServer.apiUrl}/sync/stream'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(SyncStreamDto(types: [SyncRequestType.assetsV2]).toJson()),
    );
    final assetId = (jsonDecode(const LineSplitter().convert(syncRes.body).first)['data'] as Map)['id'] as String;
    final asset = await AssetsApi(client).getAssetInfo(assetId);
    expect(asset!.exifInfo.orElse(null)?.city, isNotNull);

    final thumb = await http.get(Uri.parse('${DemoServer.apiUrl}/assets/$assetId/thumbnail?size=thumbnail'));
    expect(thumb.statusCode, 200);
    expect(thumb.headers['content-type'], 'image/jpeg');

    final smart = await SearchApi(client).searchSmart(SmartSearchDto(query: const Optional.present('dog on the beach')));
    expect(smart!.assets.items, isNotEmpty);
    final meta = await SearchApi(client).searchAssets(MetadataSearchDto(isFavorite: const Optional.present(true)));
    expect(meta!.assets.items, isNotEmpty);
    expect(await SearchApi(client).getSearchSuggestions(SearchSuggestionType.country), isNotEmpty);
    expect(await SearchApi(client).getExploreData(), isNotEmpty);
    expect(await SearchApi(client).getAssetsByCity(), isNotEmpty);

    final album = await AlbumsApi(client).createAlbum(
      CreateAlbumDto(albumName: 'Test', assetIds: Optional.present([assetId])),
    );
    expect(album!.assetCount, 1);
    expect(await AlbumsApi(client).updateAlbumInfo(album.id, UpdateAlbumDto(albumName: const Optional.present('X'))), isNotNull);
    final added = await AlbumsApi(client).addAssetsToAlbum(album.id, BulkIdsDto(ids: [assetId]));
    expect(added!.single.success, isFalse);
    await AlbumsApi(client).deleteAlbum(album.id);

    expect(await SharedLinksApi(client).getAllSharedLinks(), isNotEmpty);
    expect(await TagsApi(client).getAllTags(), isNotEmpty);
    expect(await ViewsApi(client).getUniqueOriginalPaths(), isNotEmpty);
    final paths = await ViewsApi(client).getUniqueOriginalPaths();
    expect(await ViewsApi(client).getAssetsByOriginalPath(paths!.first), isNotEmpty);
    expect(await TrashApi(client).restoreTrash(), isNotNull);
    expect(await SessionsApi(client).createSession(SessionCreateDto()), isNotNull);

    final range = await http.get(
      Uri.parse('${DemoServer.apiUrl}/assets/${_videoId(syncRes.body)}/video/playback'),
      headers: {'Range': 'bytes=0-99'},
    );
    expect(range.statusCode, 206);
    expect(range.bodyBytes.length, 100);
  });
}

String _videoId(String body) {
  for (final line in const LineSplitter().convert(body)) {
    final data = jsonDecode(line)['data'] as Map;
    if (data['type'] == 'VIDEO') {
      return data['id'] as String;
    }
  }
  throw StateError('no video');
}
