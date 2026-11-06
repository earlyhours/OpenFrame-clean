// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [ActivitiesPage]
class ActivitiesRoute extends PageRouteInfo<ActivitiesRouteArgs> {
  ActivitiesRoute({
    Key? key,
    required RemoteAlbum album,
    String? assetId,
    String? assetName,
    List<PageRouteInfo>? children,
  }) : super(
         ActivitiesRoute.name,
         args: ActivitiesRouteArgs(
           key: key,
           album: album,
           assetId: assetId,
           assetName: assetName,
         ),
         initialChildren: children,
       );

  static const String name = 'ActivitiesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ActivitiesRouteArgs>();
      return ActivitiesPage(
        key: args.key,
        album: args.album,
        assetId: args.assetId,
        assetName: args.assetName,
      );
    },
  );
}

class ActivitiesRouteArgs {
  const ActivitiesRouteArgs({
    this.key,
    required this.album,
    this.assetId,
    this.assetName,
  });

  final Key? key;

  final RemoteAlbum album;

  final String? assetId;

  final String? assetName;

  @override
  String toString() {
    return 'ActivitiesRouteArgs{key: $key, album: $album, assetId: $assetId, assetName: $assetName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ActivitiesRouteArgs) return false;
    return key == other.key &&
        album == other.album &&
        assetId == other.assetId &&
        assetName == other.assetName;
  }

  @override
  int get hashCode =>
      key.hashCode ^ album.hashCode ^ assetId.hashCode ^ assetName.hashCode;
}

/// generated route for
/// [AlbumOptionsPage]
class AlbumOptionsRoute extends PageRouteInfo<AlbumOptionsRouteArgs> {
  AlbumOptionsRoute({
    Key? key,
    required RemoteAlbum album,
    List<PageRouteInfo>? children,
  }) : super(
         AlbumOptionsRoute.name,
         args: AlbumOptionsRouteArgs(key: key, album: album),
         initialChildren: children,
       );

  static const String name = 'AlbumOptionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AlbumOptionsRouteArgs>();
      return AlbumOptionsPage(key: args.key, album: args.album);
    },
  );
}

class AlbumOptionsRouteArgs {
  const AlbumOptionsRouteArgs({this.key, required this.album});

  final Key? key;

  final RemoteAlbum album;

  @override
  String toString() {
    return 'AlbumOptionsRouteArgs{key: $key, album: $album}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AlbumOptionsRouteArgs) return false;
    return key == other.key && album == other.album;
  }

  @override
  int get hashCode => key.hashCode ^ album.hashCode;
}

/// generated route for
/// [AlbumsPage]
class AlbumsRoute extends PageRouteInfo<void> {
  const AlbumsRoute({List<PageRouteInfo>? children})
    : super(AlbumsRoute.name, initialChildren: children);

  static const String name = 'AlbumsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AlbumsPage();
    },
  );
}

/// generated route for
/// [AppLogDetailPage]
class AppLogDetailRoute extends PageRouteInfo<AppLogDetailRouteArgs> {
  AppLogDetailRoute({
    Key? key,
    required LogMessage logMessage,
    List<PageRouteInfo>? children,
  }) : super(
         AppLogDetailRoute.name,
         args: AppLogDetailRouteArgs(key: key, logMessage: logMessage),
         initialChildren: children,
       );

  static const String name = 'AppLogDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLogDetailRouteArgs>();
      return AppLogDetailPage(key: args.key, logMessage: args.logMessage);
    },
  );
}

class AppLogDetailRouteArgs {
  const AppLogDetailRouteArgs({this.key, required this.logMessage});

  final Key? key;

  final LogMessage logMessage;

  @override
  String toString() {
    return 'AppLogDetailRouteArgs{key: $key, logMessage: $logMessage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppLogDetailRouteArgs) return false;
    return key == other.key && logMessage == other.logMessage;
  }

  @override
  int get hashCode => key.hashCode ^ logMessage.hashCode;
}

/// generated route for
/// [AppLogPage]
class AppLogRoute extends PageRouteInfo<void> {
  const AppLogRoute({List<PageRouteInfo>? children})
    : super(AppLogRoute.name, initialChildren: children);

  static const String name = 'AppLogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppLogPage();
    },
  );
}

/// generated route for
/// [ArchivePage]
class ArchiveRoute extends PageRouteInfo<void> {
  const ArchiveRoute({List<PageRouteInfo>? children})
    : super(ArchiveRoute.name, initialChildren: children);

  static const String name = 'ArchiveRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArchivePage();
    },
  );
}

/// generated route for
/// [AssetSelectionTimelinePage]
class AssetSelectionTimelineRoute
    extends PageRouteInfo<AssetSelectionTimelineRouteArgs> {
  AssetSelectionTimelineRoute({
    Key? key,
    Set<BaseAsset> lockedSelectionAssets = const {},
    List<PageRouteInfo>? children,
  }) : super(
         AssetSelectionTimelineRoute.name,
         args: AssetSelectionTimelineRouteArgs(
           key: key,
           lockedSelectionAssets: lockedSelectionAssets,
         ),
         initialChildren: children,
       );

  static const String name = 'AssetSelectionTimelineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AssetSelectionTimelineRouteArgs>(
        orElse: () => const AssetSelectionTimelineRouteArgs(),
      );
      return AssetSelectionTimelinePage(
        key: args.key,
        lockedSelectionAssets: args.lockedSelectionAssets,
      );
    },
  );
}

class AssetSelectionTimelineRouteArgs {
  const AssetSelectionTimelineRouteArgs({
    this.key,
    this.lockedSelectionAssets = const {},
  });

  final Key? key;

  final Set<BaseAsset> lockedSelectionAssets;

  @override
  String toString() {
    return 'AssetSelectionTimelineRouteArgs{key: $key, lockedSelectionAssets: $lockedSelectionAssets}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AssetSelectionTimelineRouteArgs) return false;
    return key == other.key &&
        const SetEquality<BaseAsset>().equals(
          lockedSelectionAssets,
          other.lockedSelectionAssets,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^ const SetEquality<BaseAsset>().hash(lockedSelectionAssets);
}

/// generated route for
/// [AssetTroubleshootPage]
class AssetTroubleshootRoute extends PageRouteInfo<AssetTroubleshootRouteArgs> {
  AssetTroubleshootRoute({
    Key? key,
    required BaseAsset asset,
    List<PageRouteInfo>? children,
  }) : super(
         AssetTroubleshootRoute.name,
         args: AssetTroubleshootRouteArgs(key: key, asset: asset),
         initialChildren: children,
       );

  static const String name = 'AssetTroubleshootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AssetTroubleshootRouteArgs>();
      return AssetTroubleshootPage(key: args.key, asset: args.asset);
    },
  );
}

class AssetTroubleshootRouteArgs {
  const AssetTroubleshootRouteArgs({this.key, required this.asset});

  final Key? key;

  final BaseAsset asset;

  @override
  String toString() {
    return 'AssetTroubleshootRouteArgs{key: $key, asset: $asset}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AssetTroubleshootRouteArgs) return false;
    return key == other.key && asset == other.asset;
  }

  @override
  int get hashCode => key.hashCode ^ asset.hashCode;
}

/// generated route for
/// [AssetViewerPage]
class AssetViewerRoute extends PageRouteInfo<AssetViewerRouteArgs> {
  AssetViewerRoute({
    Key? key,
    required int initialIndex,
    required TimelineService timelineService,
    int? heroOffset,
    RemoteAlbum? currentAlbum,
    List<PageRouteInfo>? children,
  }) : super(
         AssetViewerRoute.name,
         args: AssetViewerRouteArgs(
           key: key,
           initialIndex: initialIndex,
           timelineService: timelineService,
           heroOffset: heroOffset,
           currentAlbum: currentAlbum,
         ),
         initialChildren: children,
       );

  static const String name = 'AssetViewerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AssetViewerRouteArgs>();
      return AssetViewerPage(
        key: args.key,
        initialIndex: args.initialIndex,
        timelineService: args.timelineService,
        heroOffset: args.heroOffset,
        currentAlbum: args.currentAlbum,
      );
    },
  );
}

class AssetViewerRouteArgs {
  const AssetViewerRouteArgs({
    this.key,
    required this.initialIndex,
    required this.timelineService,
    this.heroOffset,
    this.currentAlbum,
  });

  final Key? key;

  final int initialIndex;

  final TimelineService timelineService;

  final int? heroOffset;

  final RemoteAlbum? currentAlbum;

  @override
  String toString() {
    return 'AssetViewerRouteArgs{key: $key, initialIndex: $initialIndex, timelineService: $timelineService, heroOffset: $heroOffset, currentAlbum: $currentAlbum}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AssetViewerRouteArgs) return false;
    return key == other.key &&
        initialIndex == other.initialIndex &&
        timelineService == other.timelineService &&
        heroOffset == other.heroOffset &&
        currentAlbum == other.currentAlbum;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      initialIndex.hashCode ^
      timelineService.hashCode ^
      heroOffset.hashCode ^
      currentAlbum.hashCode;
}

/// generated route for
/// [BackupAlbumSelectionPage]
class BackupAlbumSelectionRoute extends PageRouteInfo<void> {
  const BackupAlbumSelectionRoute({List<PageRouteInfo>? children})
    : super(BackupAlbumSelectionRoute.name, initialChildren: children);

  static const String name = 'BackupAlbumSelectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BackupAlbumSelectionPage();
    },
  );
}

/// generated route for
/// [BackupAssetDetailPage]
class BackupAssetDetailRoute extends PageRouteInfo<void> {
  const BackupAssetDetailRoute({List<PageRouteInfo>? children})
    : super(BackupAssetDetailRoute.name, initialChildren: children);

  static const String name = 'BackupAssetDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BackupAssetDetailPage();
    },
  );
}

/// generated route for
/// [BackupOptionsPage]
class BackupOptionsRoute extends PageRouteInfo<void> {
  const BackupOptionsRoute({List<PageRouteInfo>? children})
    : super(BackupOptionsRoute.name, initialChildren: children);

  static const String name = 'BackupOptionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BackupOptionsPage();
    },
  );
}

/// generated route for
/// [BackupPage]
class BackupRoute extends PageRouteInfo<void> {
  const BackupRoute({List<PageRouteInfo>? children})
    : super(BackupRoute.name, initialChildren: children);

  static const String name = 'BackupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BackupPage();
    },
  );
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePasswordPage();
    },
  );
}

/// generated route for
/// [CleanupPreviewPage]
class CleanupPreviewRoute extends PageRouteInfo<CleanupPreviewRouteArgs> {
  CleanupPreviewRoute({
    Key? key,
    required List<LocalAsset> assets,
    List<PageRouteInfo>? children,
  }) : super(
         CleanupPreviewRoute.name,
         args: CleanupPreviewRouteArgs(key: key, assets: assets),
         initialChildren: children,
       );

  static const String name = 'CleanupPreviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CleanupPreviewRouteArgs>();
      return CleanupPreviewPage(key: args.key, assets: args.assets);
    },
  );
}

class CleanupPreviewRouteArgs {
  const CleanupPreviewRouteArgs({this.key, required this.assets});

  final Key? key;

  final List<LocalAsset> assets;

  @override
  String toString() {
    return 'CleanupPreviewRouteArgs{key: $key, assets: $assets}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CleanupPreviewRouteArgs) return false;
    return key == other.key &&
        const ListEquality<LocalAsset>().equals(assets, other.assets);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<LocalAsset>().hash(assets);
}

/// generated route for
/// [CreateAlbumPage]
class CreateAlbumRoute extends PageRouteInfo<void> {
  const CreateAlbumRoute({List<PageRouteInfo>? children})
    : super(CreateAlbumRoute.name, initialChildren: children);

  static const String name = 'CreateAlbumRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateAlbumPage();
    },
  );
}

/// generated route for
/// [DownloadInfoPage]
class DownloadInfoRoute extends PageRouteInfo<void> {
  const DownloadInfoRoute({List<PageRouteInfo>? children})
    : super(DownloadInfoRoute.name, initialChildren: children);

  static const String name = 'DownloadInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DownloadInfoPage();
    },
  );
}

/// generated route for
/// [EditImagePage]
class EditImageRoute extends PageRouteInfo<EditImageRouteArgs> {
  EditImageRoute({
    Key? key,
    required Image image,
    required Future<void> Function(List<AssetEdit>) applyEdits,
    List<PageRouteInfo>? children,
  }) : super(
         EditImageRoute.name,
         args: EditImageRouteArgs(
           key: key,
           image: image,
           applyEdits: applyEdits,
         ),
         initialChildren: children,
       );

  static const String name = 'EditImageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditImageRouteArgs>();
      return EditImagePage(
        key: args.key,
        image: args.image,
        applyEdits: args.applyEdits,
      );
    },
  );
}

class EditImageRouteArgs {
  const EditImageRouteArgs({
    this.key,
    required this.image,
    required this.applyEdits,
  });

  final Key? key;

  final Image image;

  final Future<void> Function(List<AssetEdit>) applyEdits;

  @override
  String toString() {
    return 'EditImageRouteArgs{key: $key, image: $image, applyEdits: $applyEdits}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditImageRouteArgs) return false;
    return key == other.key && image == other.image;
  }

  @override
  int get hashCode => key.hashCode ^ image.hashCode;
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritePage();
    },
  );
}

/// generated route for
/// [FolderPage]
class FolderRoute extends PageRouteInfo<FolderRouteArgs> {
  FolderRoute({
    Key? key,
    RecursiveFolder? folder,
    List<PageRouteInfo>? children,
  }) : super(
         FolderRoute.name,
         args: FolderRouteArgs(key: key, folder: folder),
         initialChildren: children,
       );

  static const String name = 'FolderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FolderRouteArgs>(
        orElse: () => const FolderRouteArgs(),
      );
      return FolderPage(key: args.key, folder: args.folder);
    },
  );
}

class FolderRouteArgs {
  const FolderRouteArgs({this.key, this.folder});

  final Key? key;

  final RecursiveFolder? folder;

  @override
  String toString() {
    return 'FolderRouteArgs{key: $key, folder: $folder}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FolderRouteArgs) return false;
    return key == other.key && folder == other.folder;
  }

  @override
  int get hashCode => key.hashCode ^ folder.hashCode;
}

/// generated route for
/// [HeaderSettingsPage]
class HeaderSettingsRoute extends PageRouteInfo<void> {
  const HeaderSettingsRoute({List<PageRouteInfo>? children})
    : super(HeaderSettingsRoute.name, initialChildren: children);

  static const String name = 'HeaderSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HeaderSettingsPage();
    },
  );
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute({List<PageRouteInfo>? children})
    : super(LibraryRoute.name, initialChildren: children);

  static const String name = 'LibraryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LibraryPage();
    },
  );
}

/// generated route for
/// [LocalAlbumsPage]
class LocalAlbumsRoute extends PageRouteInfo<void> {
  const LocalAlbumsRoute({List<PageRouteInfo>? children})
    : super(LocalAlbumsRoute.name, initialChildren: children);

  static const String name = 'LocalAlbumsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocalAlbumsPage();
    },
  );
}

/// generated route for
/// [LocalMediaSummaryPage]
class LocalMediaSummaryRoute extends PageRouteInfo<void> {
  const LocalMediaSummaryRoute({List<PageRouteInfo>? children})
    : super(LocalMediaSummaryRoute.name, initialChildren: children);

  static const String name = 'LocalMediaSummaryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocalMediaSummaryPage();
    },
  );
}

/// generated route for
/// [LocalTimelinePage]
class LocalTimelineRoute extends PageRouteInfo<LocalTimelineRouteArgs> {
  LocalTimelineRoute({
    Key? key,
    required LocalAlbum album,
    List<PageRouteInfo>? children,
  }) : super(
         LocalTimelineRoute.name,
         args: LocalTimelineRouteArgs(key: key, album: album),
         initialChildren: children,
       );

  static const String name = 'LocalTimelineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LocalTimelineRouteArgs>();
      return LocalTimelinePage(key: args.key, album: args.album);
    },
  );
}

class LocalTimelineRouteArgs {
  const LocalTimelineRouteArgs({this.key, required this.album});

  final Key? key;

  final LocalAlbum album;

  @override
  String toString() {
    return 'LocalTimelineRouteArgs{key: $key, album: $album}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LocalTimelineRouteArgs) return false;
    return key == other.key && album == other.album;
  }

  @override
  int get hashCode => key.hashCode ^ album.hashCode;
}

/// generated route for
/// [LockedFolderPage]
class LockedFolderRoute extends PageRouteInfo<void> {
  const LockedFolderRoute({List<PageRouteInfo>? children})
    : super(LockedFolderRoute.name, initialChildren: children);

  static const String name = 'LockedFolderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LockedFolderPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MainTimelinePage]
class MainTimelineRoute extends PageRouteInfo<void> {
  const MainTimelineRoute({List<PageRouteInfo>? children})
    : super(MainTimelineRoute.name, initialChildren: children);

  static const String name = 'MainTimelineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainTimelinePage();
    },
  );
}

/// generated route for
/// [MapLocationPickerPage]
class MapLocationPickerRoute extends PageRouteInfo<MapLocationPickerRouteArgs> {
  MapLocationPickerRoute({
    Key? key,
    LatLng initialLatLng = const LatLng(0, 0),
    List<PageRouteInfo>? children,
  }) : super(
         MapLocationPickerRoute.name,
         args: MapLocationPickerRouteArgs(
           key: key,
           initialLatLng: initialLatLng,
         ),
         initialChildren: children,
       );

  static const String name = 'MapLocationPickerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MapLocationPickerRouteArgs>(
        orElse: () => const MapLocationPickerRouteArgs(),
      );
      return MapLocationPickerPage(
        key: args.key,
        initialLatLng: args.initialLatLng,
      );
    },
  );
}

class MapLocationPickerRouteArgs {
  const MapLocationPickerRouteArgs({
    this.key,
    this.initialLatLng = const LatLng(0, 0),
  });

  final Key? key;

  final LatLng initialLatLng;

  @override
  String toString() {
    return 'MapLocationPickerRouteArgs{key: $key, initialLatLng: $initialLatLng}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MapLocationPickerRouteArgs) return false;
    return key == other.key && initialLatLng == other.initialLatLng;
  }

  @override
  int get hashCode => key.hashCode ^ initialLatLng.hashCode;
}

/// generated route for
/// [MapPage]
class MapRoute extends PageRouteInfo<MapRouteArgs> {
  MapRoute({Key? key, LatLng? initialLocation, List<PageRouteInfo>? children})
    : super(
        MapRoute.name,
        args: MapRouteArgs(key: key, initialLocation: initialLocation),
        initialChildren: children,
      );

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MapRouteArgs>(
        orElse: () => const MapRouteArgs(),
      );
      return MapPage(key: args.key, initialLocation: args.initialLocation);
    },
  );
}

class MapRouteArgs {
  const MapRouteArgs({this.key, this.initialLocation});

  final Key? key;

  final LatLng? initialLocation;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key, initialLocation: $initialLocation}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MapRouteArgs) return false;
    return key == other.key && initialLocation == other.initialLocation;
  }

  @override
  int get hashCode => key.hashCode ^ initialLocation.hashCode;
}

/// generated route for
/// [MemoryListPage]
class MemoryListRoute extends PageRouteInfo<void> {
  const MemoryListRoute({List<PageRouteInfo>? children})
    : super(MemoryListRoute.name, initialChildren: children);

  static const String name = 'MemoryListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MemoryListPage();
    },
  );
}

/// generated route for
/// [MemoryPage]
class MemoryRoute extends PageRouteInfo<MemoryRouteArgs> {
  MemoryRoute({
    required List<Memory> memories,
    required int memoryIndex,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         MemoryRoute.name,
         args: MemoryRouteArgs(
           memories: memories,
           memoryIndex: memoryIndex,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'MemoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemoryRouteArgs>();
      return MemoryPage(
        memories: args.memories,
        memoryIndex: args.memoryIndex,
        key: args.key,
      );
    },
  );
}

class MemoryRouteArgs {
  const MemoryRouteArgs({
    required this.memories,
    required this.memoryIndex,
    this.key,
  });

  final List<Memory> memories;

  final int memoryIndex;

  final Key? key;

  @override
  String toString() {
    return 'MemoryRouteArgs{memories: $memories, memoryIndex: $memoryIndex, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MemoryRouteArgs) return false;
    return const ListEquality<Memory>().equals(memories, other.memories) &&
        memoryIndex == other.memoryIndex &&
        key == other.key;
  }

  @override
  int get hashCode =>
      const ListEquality<Memory>().hash(memories) ^
      memoryIndex.hashCode ^
      key.hashCode;
}

/// generated route for
/// [PartnerDetailPage]
class PartnerDetailRoute extends PageRouteInfo<PartnerDetailRouteArgs> {
  PartnerDetailRoute({
    Key? key,
    required Partner partner,
    List<PageRouteInfo>? children,
  }) : super(
         PartnerDetailRoute.name,
         args: PartnerDetailRouteArgs(key: key, partner: partner),
         initialChildren: children,
       );

  static const String name = 'PartnerDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PartnerDetailRouteArgs>();
      return PartnerDetailPage(key: args.key, partner: args.partner);
    },
  );
}

class PartnerDetailRouteArgs {
  const PartnerDetailRouteArgs({this.key, required this.partner});

  final Key? key;

  final Partner partner;

  @override
  String toString() {
    return 'PartnerDetailRouteArgs{key: $key, partner: $partner}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PartnerDetailRouteArgs) return false;
    return key == other.key && partner == other.partner;
  }

  @override
  int get hashCode => key.hashCode ^ partner.hashCode;
}

/// generated route for
/// [PartnerPage]
class PartnerRoute extends PageRouteInfo<void> {
  const PartnerRoute({List<PageRouteInfo>? children})
    : super(PartnerRoute.name, initialChildren: children);

  static const String name = 'PartnerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PartnerPage();
    },
  );
}

/// generated route for
/// [PeopleCollectionPage]
class PeopleCollectionRoute extends PageRouteInfo<void> {
  const PeopleCollectionRoute({List<PageRouteInfo>? children})
    : super(PeopleCollectionRoute.name, initialChildren: children);

  static const String name = 'PeopleCollectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PeopleCollectionPage();
    },
  );
}

/// generated route for
/// [PersonPage]
class PersonRoute extends PageRouteInfo<PersonRouteArgs> {
  PersonRoute({Key? key, required Person person, List<PageRouteInfo>? children})
    : super(
        PersonRoute.name,
        args: PersonRouteArgs(key: key, person: person),
        initialChildren: children,
      );

  static const String name = 'PersonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PersonRouteArgs>();
      return PersonPage(key: args.key, person: args.person);
    },
  );
}

class PersonRouteArgs {
  const PersonRouteArgs({this.key, required this.person});

  final Key? key;

  final Person person;

  @override
  String toString() {
    return 'PersonRouteArgs{key: $key, person: $person}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PersonRouteArgs) return false;
    return key == other.key && person == other.person;
  }

  @override
  int get hashCode => key.hashCode ^ person.hashCode;
}

/// generated route for
/// [PinAuthPage]
class PinAuthRoute extends PageRouteInfo<PinAuthRouteArgs> {
  PinAuthRoute({
    Key? key,
    bool createPinCode = false,
    List<PageRouteInfo>? children,
  }) : super(
         PinAuthRoute.name,
         args: PinAuthRouteArgs(key: key, createPinCode: createPinCode),
         initialChildren: children,
       );

  static const String name = 'PinAuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PinAuthRouteArgs>(
        orElse: () => const PinAuthRouteArgs(),
      );
      return PinAuthPage(key: args.key, createPinCode: args.createPinCode);
    },
  );
}

class PinAuthRouteArgs {
  const PinAuthRouteArgs({this.key, this.createPinCode = false});

  final Key? key;

  final bool createPinCode;

  @override
  String toString() {
    return 'PinAuthRouteArgs{key: $key, createPinCode: $createPinCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PinAuthRouteArgs) return false;
    return key == other.key && createPinCode == other.createPinCode;
  }

  @override
  int get hashCode => key.hashCode ^ createPinCode.hashCode;
}

/// generated route for
/// [PlaceDetailPage]
class PlaceDetailRoute extends PageRouteInfo<PlaceDetailRouteArgs> {
  PlaceDetailRoute({
    Key? key,
    required String place,
    List<PageRouteInfo>? children,
  }) : super(
         PlaceDetailRoute.name,
         args: PlaceDetailRouteArgs(key: key, place: place),
         initialChildren: children,
       );

  static const String name = 'PlaceDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaceDetailRouteArgs>();
      return PlaceDetailPage(key: args.key, place: args.place);
    },
  );
}

class PlaceDetailRouteArgs {
  const PlaceDetailRouteArgs({this.key, required this.place});

  final Key? key;

  final String place;

  @override
  String toString() {
    return 'PlaceDetailRouteArgs{key: $key, place: $place}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlaceDetailRouteArgs) return false;
    return key == other.key && place == other.place;
  }

  @override
  int get hashCode => key.hashCode ^ place.hashCode;
}

/// generated route for
/// [PlacePage]
class PlaceRoute extends PageRouteInfo<PlaceRouteArgs> {
  PlaceRoute({Key? key, LatLng? currentLocation, List<PageRouteInfo>? children})
    : super(
        PlaceRoute.name,
        args: PlaceRouteArgs(key: key, currentLocation: currentLocation),
        initialChildren: children,
      );

  static const String name = 'PlaceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaceRouteArgs>(
        orElse: () => const PlaceRouteArgs(),
      );
      return PlacePage(key: args.key, currentLocation: args.currentLocation);
    },
  );
}

class PlaceRouteArgs {
  const PlaceRouteArgs({this.key, this.currentLocation});

  final Key? key;

  final LatLng? currentLocation;

  @override
  String toString() {
    return 'PlaceRouteArgs{key: $key, currentLocation: $currentLocation}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlaceRouteArgs) return false;
    return key == other.key && currentLocation == other.currentLocation;
  }

  @override
  int get hashCode => key.hashCode ^ currentLocation.hashCode;
}

/// generated route for
/// [ProfilePictureCropPage]
class ProfilePictureCropRoute
    extends PageRouteInfo<ProfilePictureCropRouteArgs> {
  ProfilePictureCropRoute({
    Key? key,
    required BaseAsset asset,
    List<PageRouteInfo>? children,
  }) : super(
         ProfilePictureCropRoute.name,
         args: ProfilePictureCropRouteArgs(key: key, asset: asset),
         initialChildren: children,
       );

  static const String name = 'ProfilePictureCropRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfilePictureCropRouteArgs>();
      return ProfilePictureCropPage(key: args.key, asset: args.asset);
    },
  );
}

class ProfilePictureCropRouteArgs {
  const ProfilePictureCropRouteArgs({this.key, required this.asset});

  final Key? key;

  final BaseAsset asset;

  @override
  String toString() {
    return 'ProfilePictureCropRouteArgs{key: $key, asset: $asset}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfilePictureCropRouteArgs) return false;
    return key == other.key && asset == other.asset;
  }

  @override
  int get hashCode => key.hashCode ^ asset.hashCode;
}

/// generated route for
/// [RecentlyAddedPage]
class RecentlyAddedRoute extends PageRouteInfo<void> {
  const RecentlyAddedRoute({List<PageRouteInfo>? children})
    : super(RecentlyAddedRoute.name, initialChildren: children);

  static const String name = 'RecentlyAddedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecentlyAddedPage();
    },
  );
}

/// generated route for
/// [RecentlyTakenPage]
class RecentlyTakenRoute extends PageRouteInfo<void> {
  const RecentlyTakenRoute({List<PageRouteInfo>? children})
    : super(RecentlyTakenRoute.name, initialChildren: children);

  static const String name = 'RecentlyTakenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecentlyTakenPage();
    },
  );
}

/// generated route for
/// [RemoteAlbumPage]
class RemoteAlbumRoute extends PageRouteInfo<RemoteAlbumRouteArgs> {
  RemoteAlbumRoute({
    Key? key,
    required RemoteAlbum album,
    List<PageRouteInfo>? children,
  }) : super(
         RemoteAlbumRoute.name,
         args: RemoteAlbumRouteArgs(key: key, album: album),
         initialChildren: children,
       );

  static const String name = 'RemoteAlbumRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RemoteAlbumRouteArgs>();
      return RemoteAlbumPage(key: args.key, album: args.album);
    },
  );
}

class RemoteAlbumRouteArgs {
  const RemoteAlbumRouteArgs({this.key, required this.album});

  final Key? key;

  final RemoteAlbum album;

  @override
  String toString() {
    return 'RemoteAlbumRouteArgs{key: $key, album: $album}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RemoteAlbumRouteArgs) return false;
    return key == other.key && album == other.album;
  }

  @override
  int get hashCode => key.hashCode ^ album.hashCode;
}

/// generated route for
/// [RemoteMediaSummaryPage]
class RemoteMediaSummaryRoute extends PageRouteInfo<void> {
  const RemoteMediaSummaryRoute({List<PageRouteInfo>? children})
    : super(RemoteMediaSummaryRoute.name, initialChildren: children);

  static const String name = 'RemoteMediaSummaryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RemoteMediaSummaryPage();
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SettingsSubPage]
class SettingsSubRoute extends PageRouteInfo<SettingsSubRouteArgs> {
  SettingsSubRoute({
    required SettingSection section,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         SettingsSubRoute.name,
         args: SettingsSubRouteArgs(section: section, key: key),
         initialChildren: children,
       );

  static const String name = 'SettingsSubRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingsSubRouteArgs>();
      return SettingsSubPage(args.section, key: args.key);
    },
  );
}

class SettingsSubRouteArgs {
  const SettingsSubRouteArgs({required this.section, this.key});

  final SettingSection section;

  final Key? key;

  @override
  String toString() {
    return 'SettingsSubRouteArgs{section: $section, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SettingsSubRouteArgs) return false;
    return section == other.section && key == other.key;
  }

  @override
  int get hashCode => section.hashCode ^ key.hashCode;
}

/// generated route for
/// [ShareIntentPage]
class ShareIntentRoute extends PageRouteInfo<ShareIntentRouteArgs> {
  ShareIntentRoute({
    Key? key,
    required List<ShareIntentAttachment> attachments,
    List<PageRouteInfo>? children,
  }) : super(
         ShareIntentRoute.name,
         args: ShareIntentRouteArgs(key: key, attachments: attachments),
         initialChildren: children,
       );

  static const String name = 'ShareIntentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ShareIntentRouteArgs>();
      return ShareIntentPage(key: args.key, attachments: args.attachments);
    },
  );
}

class ShareIntentRouteArgs {
  const ShareIntentRouteArgs({this.key, required this.attachments});

  final Key? key;

  final List<ShareIntentAttachment> attachments;

  @override
  String toString() {
    return 'ShareIntentRouteArgs{key: $key, attachments: $attachments}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ShareIntentRouteArgs) return false;
    return key == other.key &&
        const ListEquality<ShareIntentAttachment>().equals(
          attachments,
          other.attachments,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const ListEquality<ShareIntentAttachment>().hash(attachments);
}

/// generated route for
/// [SharedLinkEditPage]
class SharedLinkEditRoute extends PageRouteInfo<SharedLinkEditRouteArgs> {
  SharedLinkEditRoute({
    Key? key,
    SharedLink? existingLink,
    List<String>? assetsList,
    String? albumId,
    List<PageRouteInfo>? children,
  }) : super(
         SharedLinkEditRoute.name,
         args: SharedLinkEditRouteArgs(
           key: key,
           existingLink: existingLink,
           assetsList: assetsList,
           albumId: albumId,
         ),
         initialChildren: children,
       );

  static const String name = 'SharedLinkEditRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SharedLinkEditRouteArgs>(
        orElse: () => const SharedLinkEditRouteArgs(),
      );
      return SharedLinkEditPage(
        key: args.key,
        existingLink: args.existingLink,
        assetsList: args.assetsList,
        albumId: args.albumId,
      );
    },
  );
}

class SharedLinkEditRouteArgs {
  const SharedLinkEditRouteArgs({
    this.key,
    this.existingLink,
    this.assetsList,
    this.albumId,
  });

  final Key? key;

  final SharedLink? existingLink;

  final List<String>? assetsList;

  final String? albumId;

  @override
  String toString() {
    return 'SharedLinkEditRouteArgs{key: $key, existingLink: $existingLink, assetsList: $assetsList, albumId: $albumId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SharedLinkEditRouteArgs) return false;
    return key == other.key &&
        existingLink == other.existingLink &&
        const ListEquality<String>().equals(assetsList, other.assetsList) &&
        albumId == other.albumId;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      existingLink.hashCode ^
      const ListEquality<String>().hash(assetsList) ^
      albumId.hashCode;
}

/// generated route for
/// [SharedLinkPage]
class SharedLinkRoute extends PageRouteInfo<void> {
  const SharedLinkRoute({List<PageRouteInfo>? children})
    : super(SharedLinkRoute.name, initialChildren: children);

  static const String name = 'SharedLinkRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SharedLinkPage();
    },
  );
}

/// generated route for
/// [SlideshowPage]
class SlideshowRoute extends PageRouteInfo<SlideshowRouteArgs> {
  SlideshowRoute({
    Key? key,
    required TimelineService timeline,
    List<PageRouteInfo>? children,
  }) : super(
         SlideshowRoute.name,
         args: SlideshowRouteArgs(key: key, timeline: timeline),
         initialChildren: children,
       );

  static const String name = 'SlideshowRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SlideshowRouteArgs>();
      return SlideshowPage(key: args.key, timeline: args.timeline);
    },
  );
}

class SlideshowRouteArgs {
  const SlideshowRouteArgs({this.key, required this.timeline});

  final Key? key;

  final TimelineService timeline;

  @override
  String toString() {
    return 'SlideshowRouteArgs{key: $key, timeline: $timeline}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SlideshowRouteArgs) return false;
    return key == other.key && timeline == other.timeline;
  }

  @override
  int get hashCode => key.hashCode ^ timeline.hashCode;
}

/// generated route for
/// [SplashScreenPage]
class SplashScreenRoute extends PageRouteInfo<SplashScreenRouteArgs> {
  SplashScreenRoute({
    Key? key,
    PageRouteInfo<Object?>? deepLink,
    List<PageRouteInfo>? children,
  }) : super(
         SplashScreenRoute.name,
         args: SplashScreenRouteArgs(key: key, deepLink: deepLink),
         initialChildren: children,
       );

  static const String name = 'SplashScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashScreenRouteArgs>(
        orElse: () => const SplashScreenRouteArgs(),
      );
      return SplashScreenPage(key: args.key, deepLink: args.deepLink);
    },
  );
}

class SplashScreenRouteArgs {
  const SplashScreenRouteArgs({this.key, this.deepLink});

  final Key? key;

  final PageRouteInfo<Object?>? deepLink;

  @override
  String toString() {
    return 'SplashScreenRouteArgs{key: $key, deepLink: $deepLink}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SplashScreenRouteArgs) return false;
    return key == other.key && deepLink == other.deepLink;
  }

  @override
  int get hashCode => key.hashCode ^ deepLink.hashCode;
}

/// generated route for
/// [SyncStatusPage]
class SyncStatusRoute extends PageRouteInfo<void> {
  const SyncStatusRoute({List<PageRouteInfo>? children})
    : super(SyncStatusRoute.name, initialChildren: children);

  static const String name = 'SyncStatusRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SyncStatusPage();
    },
  );
}

/// generated route for
/// [TabShellPage]
class TabShellRoute extends PageRouteInfo<void> {
  const TabShellRoute({List<PageRouteInfo>? children})
    : super(TabShellRoute.name, initialChildren: children);

  static const String name = 'TabShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabShellPage();
    },
  );
}

/// generated route for
/// [TrashPage]
class TrashRoute extends PageRouteInfo<void> {
  const TrashRoute({List<PageRouteInfo>? children})
    : super(TrashRoute.name, initialChildren: children);

  static const String name = 'TrashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TrashPage();
    },
  );
}

/// generated route for
/// [UploadDetailPage]
class UploadDetailRoute extends PageRouteInfo<void> {
  const UploadDetailRoute({List<PageRouteInfo>? children})
    : super(UploadDetailRoute.name, initialChildren: children);

  static const String name = 'UploadDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UploadDetailPage();
    },
  );
}

/// generated route for
/// [UserSelectionPage]
class UserSelectionRoute extends PageRouteInfo<UserSelectionRouteArgs> {
  UserSelectionRoute({
    Key? key,
    required RemoteAlbum album,
    List<PageRouteInfo>? children,
  }) : super(
         UserSelectionRoute.name,
         args: UserSelectionRouteArgs(key: key, album: album),
         initialChildren: children,
       );

  static const String name = 'UserSelectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserSelectionRouteArgs>();
      return UserSelectionPage(key: args.key, album: args.album);
    },
  );
}

class UserSelectionRouteArgs {
  const UserSelectionRouteArgs({this.key, required this.album});

  final Key? key;

  final RemoteAlbum album;

  @override
  String toString() {
    return 'UserSelectionRouteArgs{key: $key, album: $album}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserSelectionRouteArgs) return false;
    return key == other.key && album == other.album;
  }

  @override
  int get hashCode => key.hashCode ^ album.hashCode;
}

/// generated route for
/// [VideoPage]
class VideoRoute extends PageRouteInfo<void> {
  const VideoRoute({List<PageRouteInfo>? children})
    : super(VideoRoute.name, initialChildren: children);

  static const String name = 'VideoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VideoPage();
    },
  );
}

/// generated route for
/// [WhatsNewPage]
class WhatsNewRoute extends PageRouteInfo<void> {
  const WhatsNewRoute({List<PageRouteInfo>? children})
    : super(WhatsNewRoute.name, initialChildren: children);

  static const String name = 'WhatsNewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WhatsNewPage();
    },
  );
}
