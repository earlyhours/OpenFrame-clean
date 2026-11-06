import 'dart:io';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/constants/colors.dart';
import 'package:immich_mobile/constants/locales.dart';
import 'package:immich_mobile/data/store.dart' as data;
import 'package:immich_mobile/domain/models/album/album.model.dart';
import 'package:immich_mobile/domain/models/asset/base_asset.model.dart';
import 'package:immich_mobile/domain/models/config/album_config.dart';
import 'package:immich_mobile/domain/models/config/app_config.dart';
import 'package:immich_mobile/domain/models/store.model.dart';
import 'package:immich_mobile/domain/models/timeline.model.dart';
import 'package:immich_mobile/domain/models/user.model.dart';
import 'package:immich_mobile/domain/services/asset.service.dart';
import 'package:immich_mobile/domain/services/feature_message.service.dart';
import 'package:immich_mobile/domain/services/remote_album.service.dart';
import 'package:immich_mobile/domain/services/store.service.dart';
import 'package:immich_mobile/domain/services/timeline.service.dart';
import 'package:immich_mobile/domain/services/user.service.dart';
import 'package:immich_mobile/generated/codegen_loader.g.dart';
import 'package:immich_mobile/infrastructure/repositories/settings.repository.dart';
import 'package:immich_mobile/infrastructure/repositories/store.repository.dart';
import 'package:immich_mobile/models/albums/album_search.model.dart';
import 'package:immich_mobile/models/auth/auth_state.model.dart';
import 'package:immich_mobile/models/server_info/server_version.model.dart';
import 'package:immich_mobile/pages/common/settings.page.dart';
import 'package:immich_mobile/pages/login/login.page.dart';
import 'package:immich_mobile/presentation/pages/album.page.dart';
import 'package:immich_mobile/presentation/pages/dev/main_timeline.page.dart';
import 'package:immich_mobile/presentation/pages/remote_album.page.dart';
import 'package:immich_mobile/presentation/pages/search/search.page.dart';
import 'package:immich_mobile/presentation/widgets/images/remote_image_provider.dart';
import 'package:immich_mobile/presentation/widgets/images/thumbnail_tile.widget.dart';
import 'package:immich_mobile/presentation/widgets/timeline/multi_select_status_button.widget.dart';
import 'package:immich_mobile/providers/album/album_sort_by_options.provider.dart';
import 'package:immich_mobile/providers/asset_viewer/download.provider.dart';
import 'package:immich_mobile/providers/auth.provider.dart';
import 'package:immich_mobile/providers/backup/backup.provider.dart';
import 'package:immich_mobile/providers/feature_message.provider.dart';
import 'package:immich_mobile/providers/infrastructure/album.provider.dart';
import 'package:immich_mobile/providers/infrastructure/asset.provider.dart';
import 'package:immich_mobile/providers/infrastructure/memory.provider.dart';
import 'package:immich_mobile/providers/infrastructure/settings.provider.dart';
import 'package:immich_mobile/providers/infrastructure/timeline.provider.dart';
import 'package:immich_mobile/providers/infrastructure/user.provider.dart';
import 'package:immich_mobile/providers/routes.provider.dart';
import 'package:immich_mobile/providers/server_info.provider.dart';
import 'package:immich_mobile/providers/timeline/multiselect.provider.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_mobile/services/download.service.dart';
import 'package:immich_mobile/services/gcast.service.dart';
import 'package:immich_mobile/services/server_info.service.dart';
import 'package:immich_mobile/theme/color_scheme.dart';
import 'package:immich_mobile/theme/theme_data.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

class _StoreRepository extends Mock implements StoreRepository {}

class _SettingsRepository extends Mock implements SettingsRepository {}

class _ServerInfoService extends Mock implements ServerInfoService {}

class _RemoteAlbumService extends Mock implements RemoteAlbumService {}

class _DesignTimeline extends TimelineService {
  _DesignTimeline(super.query);
  @override
  BaseAsset getRandomAsset() => _assets.first;
}

class _TimelineFactory extends Mock implements TimelineFactory {}

class _UserService extends Mock implements UserService {}

class _AssetService extends Mock implements AssetService {}

class _FeatureService extends Mock implements FeatureMessageService {}

class _CastService extends Mock implements GCastService {}

class _DownloadService extends Mock implements DownloadService {}

final _date = DateTime(2026, 10, 26);
final _user = UserDto(
  id: 'design-user',
  email: 'yash@openframe.local',
  name: 'Yashas',
  profileChangedAt: _date,
  avatarColor: AvatarColor.orange,
);
final _assets = List.generate(
  36,
  (i) => RemoteAsset(
    id: 'design-$i',
    name: 'IMG_${2400 + i}.jpg',
    ownerId: _user.id,
    checksum: 'photo-$i',
    type: AssetType.image,
    createdAt: _date.subtract(Duration(days: i ~/ 12)),
    updatedAt: _date,
    width: 900,
    height: 700,
    isFavorite: i == 1 || i == 5,
    isEdited: false,
  ),
);
final _albums = [
  for (final (i, name) in [
    'Japan, slowly',
    'At the edge of the sea',
    'Ordinary afternoons',
    'A little closer',
    'Into the mountains',
    'City after dark',
  ].indexed)
    RemoteAlbum(
      id: 'album-$i',
      name: name,
      ownerId: _user.id,
      description: '',
      createdAt: _date,
      updatedAt: _date,
      thumbnailAssetId: _assets[i * 3].id,
      isActivityEnabled: true,
      order: AlbumAssetOrder.desc,
      assetCount: 12 + i * 3,
      ownerName: _user.name,
      isShared: false,
    ),
];

// Supply decoded fixture photos at the image cache boundary, leaving real tiles, layout, and selection intact.
class _PhotoCache extends ImageCache {
  final photos = <ui.Image>[];
  @override
  ImageStreamCompleter? putIfAbsent(Object key, ImageStreamCompleter Function() loader, {ImageErrorListener? onError}) {
    return super.putIfAbsent(key, () {
      if (key is RemoteImageProvider || key is RemoteFullImageProvider) {
        final id = key is RemoteFullImageProvider
            ? key.assetId
            : Uri.parse((key as RemoteImageProvider).url).pathSegments.lastWhere((s) => s.startsWith('design-'));
        final index = int.parse(id.substring(7)) % photos.length;
        return OneFrameImageStreamCompleter(SynchronousFuture(ImageInfo(image: photos[index].clone())));
      }
      return loader();
    }, onError: onError);
  }
}

class _DesignBinding extends AutomatedTestWidgetsFlutterBinding {
  @override
  ImageCache createImageCache() => _PhotoCache();
}

class _Auth extends StateNotifier<AuthState> implements AuthNotifier {
  _Auth()
    : super(
        const AuthState(
          deviceId: '',
          userId: '',
          userEmail: '',
          name: '',
          profileImagePath: '',
          isAdmin: false,
          isAuthenticated: false,
        ),
      );
  @override
  Future<String> validateServerUrl(String url) async => url;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Backup extends StateNotifier<BackupState> implements BackupNotifier {
  _Backup()
    : super(
        const BackupState(
          totalCount: 0,
          backupCount: 0,
          remainderCount: 0,
          processingCount: 0,
          isSyncing: false,
          uploadItems: {},
        ),
      );
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  final binding = _DesignBinding();
  setUpAll(() async {
    registerFallbackValue(AlbumSortMode.mostRecent);
    registerFallbackValue(QuickFilterMode.all);
    final store = _StoreRepository();
    when(store.getAll).thenAnswer((_) async => [const StoreDto(StoreKey.serverEndpoint, 'http://design.local/api')]);
    await StoreService.init(storeRepository: store, listenUpdates: false);
  });
  tearDownAll(() => StoreService.I.dispose());
  const output = String.fromEnvironment('DESIGN_OUTPUT');
  for (final name in ['server', 'login', 'photos', 'selection', 'albums', 'album-detail', 'search', 'settings']) {
    testWidgets('$name renders the real page at 1080x2400', (tester) async {
      final oldShadows = debugDisableShadows;
      debugDisableShadows = false;
      addTearDown(() => debugDisableShadows = oldShadows);
      tester.view.physicalSize = const Size(1080, 2400);
      tester.view.devicePixelRatio = 3;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      PackageInfo.setMockInitialValues(
        appName: 'OpenFrame',
        packageName: 'app.alextran.immich',
        version: '3.3.0',
        buildNumber: '3030000',
        buildSignature: '',
      );
      await tester.runAsync(() async {
        for (final (family, path) in [
          ('MaterialIcons', 'fonts/MaterialIcons-Regular.otf'),
          ('GoogleSans', 'fonts/GoogleSans/GoogleSans-Regular.ttf'),
          ('GoogleSansCode', 'fonts/GoogleSansCode/GoogleSansCode-Regular.ttf'),
          ('Geist', 'fonts/Geist/Geist.ttf'),
          ('GeistMono', 'fonts/GeistMono/GeistMono.ttf'),
          ('GeistPixel', 'fonts/GeistPixel/GeistPixel-Square.ttf'),
        ]) {
          await (FontLoader(family)..addFont(
                family == 'MaterialIcons'
                    ? rootBundle.load(path)
                    : Future.value(ByteData.sublistView(File(path).readAsBytesSync())),
              ))
              .load();
        }
        final cache = binding.imageCache as _PhotoCache;
        if (cache.photos.isEmpty) {
          for (var i = 0; i < 18; i++) {
            final codec = await ui.instantiateImageCodec(
              File('test/design_screenshots/fixtures/$i.jpg').readAsBytesSync(),
            );
            cache.photos.add((await codec.getNextFrame()).image);
            codec.dispose();
          }
        }
      });
      final settings = _SettingsRepository();
      const config = AppConfig(album: AlbumConfig(isGrid: true));
      when(() => settings.appConfig).thenReturn(config);
      final users = _UserService();
      when(users.tryGetMyUser).thenReturn(_user);
      when(users.watchMyUser).thenAnswer((_) => Stream.value(_user));
      final feature = _FeatureService();
      when(feature.shouldShow).thenReturn(false);
      final assetService = _AssetService();
      when(
        () => assetService.getRemoteAsset(any()),
      ).thenAnswer((call) async => _assets.firstWhere((a) => a.id == call.positionalArguments.first));
      final server = _ServerInfoService();
      final serverNotifier = ServerInfoNotifier(server);
      when(server.getServerVersion).thenAnswer((_) async => const ServerVersion(major: 3, minor: 3, patch: 0));
      when(
        server.getServerFeatures,
      ).thenAnswer((_) async => serverNotifier.state.serverFeatures.copyWith(smartSearch: true));
      when(server.getServerConfig).thenAnswer((_) async => serverNotifier.state.serverConfig);
      final remoteAlbums = _RemoteAlbumService();
      when(remoteAlbums.getAll).thenAnswer((_) async => [..._albums]);
      when(
        () => remoteAlbums.sortAlbums(any(), any(), isReverse: any(named: 'isReverse')),
      ).thenAnswer((call) async => call.positionalArguments.first as List<RemoteAlbum>);
      when(
        () => remoteAlbums.searchAlbums(any(), any(), any(), any()),
      ).thenAnswer((call) => call.positionalArguments.first as List<RemoteAlbum>);
      when(() => remoteAlbums.getUserRole(any(), any())).thenAnswer((_) async => AlbumUserRole.owner);
      when(() => remoteAlbums.watchAlbum(any())).thenAnswer((_) => Stream.value(_albums.first));
      when(() => remoteAlbums.getSharedUsers(any())).thenAnswer((_) async => []);
      when(
        () => remoteAlbums.watchDateRange(any()),
      ).thenAnswer((_) => Stream.value((_date.subtract(const Duration(days: 2)), _date)));
      final service = _DesignTimeline((
        assetSource: (index, count) async => _assets.skip(index).take(count).toList(),
        bucketSource: () => Stream.value([
          for (var i = 0; i < 3; i++) TimeBucket(date: _date.subtract(Duration(days: i)), assetCount: 12),
        ]),
        origin: TimelineOrigin.main,
      ));
      addTearDown(service.dispose);
      final factory = _TimelineFactory();
      when(() => factory.remoteAlbum(albumId: any(named: 'albumId'))).thenReturn(service);
      final container = ProviderContainer(
        overrides: [
          serverInfoServiceProvider.overrideWithValue(server),
          serverInfoProvider.overrideWith((ref) => serverNotifier),
          authProvider.overrideWith((ref) => _Auth()),
          userServiceProvider.overrideWithValue(users),
          appConfigProvider.overrideWithValue(config),
          settingsProvider.overrideWithValue(settings),
          assetServiceProvider.overrideWithValue(assetService),
          featureMessageServiceProvider.overrideWithValue(feature),
          memoryLaneProvider.overrideWith((ref) async => []),
          timelineServiceProvider.overrideWithValue(service),
          remoteAlbumServiceProvider.overrideWithValue(remoteAlbums),
          timelineFactoryProvider.overrideWithValue(factory),
          inLockedViewProvider.overrideWithValue(false),
          backupProvider.overrideWith((ref) => _Backup()),
          gCastServiceProvider.overrideWithValue(_CastService()),
          downloadStateProvider.overrideWith((ref) => DownloadStateNotifier(_DownloadService())),
          data.Store.userMetadata.preferences().overrideWith((ref) => Stream.value(null)),
        ],
      );
      addTearDown(container.dispose);
      final boundary = GlobalKey();
      final inTabs = ['photos', 'selection', 'albums', 'search'].contains(name);
      const light = bool.fromEnvironment('DESIGN_LIGHT');
      final palette = ImmichColorPreset.indigo.themeOfPreset;
      final scheme = light ? palette.light : palette.dark;
      final page = switch (name) {
        'server' || 'login' => const LoginPage(),
        'photos' || 'selection' => const MainTimelinePage(),
        'albums' => const Scaffold(body: AlbumsPage()),
        'album-detail' => RemoteAlbumPage(album: _albums.first),
        'search' => const SearchPage(),
        _ => const SettingsPage(),
      };
      final router = RootStackRouter.build(
        routes: [
          if (inTabs)
            AutoRoute(
              page: TabShellRoute.page,
              initial: true,
              children: [
                AutoRoute(page: MainTimelineRoute.page, initial: true),
                AutoRoute(page: SearchRoute.page),
                AutoRoute(page: AlbumsRoute.page),
                AutoRoute(page: LibraryRoute.page),
              ],
            )
          else
            NamedRouteDef(name: 'Design', path: '/', builder: (_, _) => page),
        ],
      );
      addTearDown(router.dispose);
      await tester.pumpWidget(
        EasyLocalization(
          supportedLocales: const [Locale('en')],
          path: translationsPath,
          startLocale: const Locale('en'),
          fallbackLocale: const Locale('en'),
          saveLocale: false,
          assetLoader: const CodegenLoader(),
          child: UncontrolledProviderScope(
            container: container,
            child: Builder(
              builder: (context) => MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: getThemeData(colorScheme: scheme, locale: const Locale('en')),
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                routerConfig: router.config(),
                builder: (context, child) => ImmichThemeProvider(
                  colorScheme: scheme,
                  child: RepaintBoundary(key: boundary, child: child),
                ),
              ),
            ),
          ),
        ),
      );
      if (name == 'album-detail') {
        for (var i = 0; i < 20; i++) {
          await tester.pump(const Duration(milliseconds: 100));
        }
      } else {
        await tester.pumpAndSettle();
      }
      if (name == 'albums' || name == 'search') {
        await tester.tap(
          find.descendant(of: find.byType(NavigationBar), matching: find.text(name == 'albums' ? 'Albums' : 'Search')),
        );
        await tester.pumpAndSettle();
      }
      if (name == 'login') {
        await tester.enterText(find.byType(TextFormField).first, 'http://10.0.2.2:2284');
        await tester.tap(find.textContaining(RegExp(r'^next$', caseSensitive: false)));
        await tester.pumpAndSettle();
        expect(find.byType(TextFormField), findsNWidgets(2));
      }
      if (name == 'photos' || name == 'selection') {
        expect(find.byType(ThumbnailTile), findsWidgets);
        if (name == 'selection') {
          await tester.longPress(find.byType(ThumbnailTile).first);
          await tester.pumpAndSettle();
          expect(container.read(multiSelectProvider).selectedAssets.length, 1);
          expect(find.byType(DraggableScrollableSheet), findsOneWidget);
        }
      }
      if (name == 'album-detail') {
        expect(find.byType(ThumbnailTile), findsWidgets);
      }
      if (name == 'albums') {
        expect(find.text('Japan, slowly'), findsOneWidget);
      }
      if (name == 'search') {
        expect(find.byKey(const Key('search_filter_chip_list')), findsOneWidget);
      }
      if (name == 'settings') {
        expect(find.byType(SettingsCard), findsWidgets);
      }
      expect(tester.takeException(), isNull);
      if (output.isNotEmpty) {
        await tester.runAsync(() async {
          final render = boundary.currentContext!.findRenderObject()! as RenderRepaintBoundary;
          final screenshot = await render.toImage(pixelRatio: 3);
          final bytes = await screenshot.toByteData(format: ui.ImageByteFormat.png);
          await Directory(output).create(recursive: true);
          await File('$output/$name${light ? '-light' : ''}.png').writeAsBytes(bytes!.buffer.asUint8List());
          screenshot.dispose();
        });
      }
      if (name == 'selection') {
        await tester.tap(find.byType(MultiSelectStatusButton));
        await tester.pumpAndSettle();
        expect(container.read(multiSelectProvider).selectedAssets, isEmpty);
        expect(find.byType(NavigationBar), findsOneWidget);
      }
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      debugDisableShadows = oldShadows;
    });
  }
}
