import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/domain/models/server_capability.model.dart';
import 'package:immich_mobile/domain/services/local_album.service.dart';
import 'package:immich_mobile/domain/services/memory.service.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/extensions/platform_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/providers/app_settings.provider.dart';
import 'package:immich_mobile/providers/background_sync.provider.dart';
import 'package:immich_mobile/providers/infrastructure/album.provider.dart';
import 'package:immich_mobile/providers/infrastructure/asset.provider.dart';
import 'package:immich_mobile/providers/infrastructure/db.provider.dart';
import 'package:immich_mobile/providers/infrastructure/storage.provider.dart';
import 'package:immich_mobile/providers/infrastructure/trash_sync.provider.dart';
import 'package:immich_mobile/providers/server_info.provider.dart';
import 'package:immich_mobile/providers/sync_status.provider.dart';
import 'package:immich_mobile/services/app_settings.service.dart';
import 'package:immich_mobile/widgets/settings/beta_sync_settings/entity_count_tile.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SyncStatusAndActions extends HookConsumerWidget {
  const SyncStatusAndActions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverVersion = ref.watch(serverInfoProvider.select((value) => value.serverVersion));

    Future<void> exportDatabase() async {
      try {
        // WAL Checkpoint to ensure all changes are written to the database
        await ref.read(driftProvider).customStatement("pragma wal_checkpoint(truncate)");
        final documentsDir = await getApplicationDocumentsDirectory();
        final dbFile = File(path.join(documentsDir.path, 'immich.sqlite'));

        // ignore: avoid_slow_async_io
        if (!await dbFile.exists()) {
          if (!context.mounted) {
            return;
          }

          context.showSnackBar(const SnackBar(content: Text('Database file not found')));
          return;
        }

        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final exportFile = File(path.join(documentsDir.path, 'immich_export_$timestamp.sqlite'));

        await dbFile.copy(exportFile.path);

        if (!context.mounted) {
          return;
        }

        final size = MediaQuery.of(context).size;
        await Share.shareXFiles(
          [XFile(exportFile.path)],
          text: 'Immich Database Export',
          sharePositionOrigin: Rect.fromPoints(Offset.zero, Offset(size.width / 3, size.height)),
        );

        Future.delayed(const Duration(seconds: 30), () async {
          // ignore: avoid_slow_async_io
          if (await exportFile.exists()) {
            await exportFile.delete();
          }
        });
        if (!context.mounted) {
          return;
        }

        context.showSnackBar(const SnackBar(content: Text('Database exported successfully')));
      } catch (e) {
        if (!context.mounted) {
          return;
        }

        context.showSnackBar(SnackBar(content: Text('Failed to export database: $e')));
      }
    }

    Future<void> clearFileCache() async {
      try {
        await ref.read(storageRepositoryProvider).clearCache();

        if (!context.mounted) {
          return;
        }

        context.showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(
              context.t.clear_file_cache_success,
              style: context.textTheme.bodyLarge?.copyWith(color: context.primaryColor),
            ),
          ),
        );
      } catch (e) {
        if (!context.mounted) {
          return;
        }

        context.showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(
              context.t.clear_file_cache_error,
              style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
            ),
          ),
        );
      }
    }

    Future<void> resetSqliteDb(BuildContext context) {
      return showAppDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(context.t.reset_sqlite),
            content: Text(context.t.reset_sqlite_confirmation),
            actions: [
              TextButton(onPressed: () => context.pop(), child: Text(context.t.cancel)),
              TextButton(
                onPressed: () async {
                  await ref.read(driftProvider).reset();
                  if (!context.mounted) {
                    return;
                  }

                  context.pop();
                  unawaited(
                    showAppDialog<void>(
                      context: context,
                      barrierDismissible: false,
                      builder: (ctx) => AlertDialog(
                        title: Text(context.t.reset_sqlite_success),
                        content: Text(context.t.reset_sqlite_done),
                        actions: [TextButton(onPressed: () => ctx.pop(), child: Text(context.t.ok))],
                      ),
                    ),
                  );
                },
                child: Text(context.t.confirm, style: TextStyle(color: context.colorScheme.error)),
              ),
            ],
          );
        },
      );
    }

    final syncStatus = ref.watch(syncStatusProvider);

    return ListView(
      padding: EdgeInsets.only(top: 8, bottom: 32 + MediaQuery.paddingOf(context).bottom),
      children: [
        const _SyncStatsCounts(),
        SettingsSection(
          title: context.t.jobs,
          hasLeadingBadges: true,
          children: [
            SettingsTile(
              icon: AppIcons.refreshCw,
              title: context.t.sync_local,
              subtitle: context.t.tap_to_run_job,
              showChevron: false,
              trailing: _SyncStatusIcon(status: syncStatus.localSyncStatus),
              onTap: () {
                unawaited(ref.read(backgroundSyncProvider).syncLocal(full: true));
              },
            ),
            SettingsTile(
              icon: AppIcons.cloudSync,
              title: context.t.sync_remote,
              subtitle: context.t.tap_to_run_job,
              showChevron: false,
              trailing: _SyncStatusIcon(status: syncStatus.remoteSyncStatus),
              onTap: () {
                unawaited(ref.read(backgroundSyncProvider).syncRemote());
              },
            ),
            if (CurrentPlatform.isIOS && serverVersion.supports(.cloudIdMetadata))
              SettingsTile(
                icon: AppIcons.cloud,
                title: 'Sync Cloud Ids',
                subtitle: context.t.tap_to_run_job,
                showChevron: false,
                trailing: _SyncStatusIcon(status: syncStatus.cloudIdSyncStatus),
                onTap: ref.watch(backgroundSyncProvider).syncCloudIds,
              ),
            SettingsTile(
              icon: AppIcons.tag,
              title: context.t.hash_asset,
              subtitle: context.t.tap_to_run_job,
              showChevron: false,
              trailing: _SyncStatusIcon(status: syncStatus.hashJobStatus),
              onTap: () {
                unawaited(ref.read(backgroundSyncProvider).hashAssets());
              },
            ),
          ],
        ),
        SettingsSection(
          title: context.t.actions,
          hasLeadingBadges: true,
          children: [
            SettingsTile(icon: AppIcons.listX, title: context.t.clear_file_cache, onTap: clearFileCache),
            if (!kReleaseMode)
              SettingsTile(
                icon: AppIcons.download,
                title: context.t.export_database,
                subtitle: context.t.export_database_description,
                onTap: exportDatabase,
              ),
            SettingsTile(
              icon: AppIcons.history,
              title: context.t.reset_sqlite,
              destructive: true,
              onTap: () async {
                await resetSqliteDb(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _SyncStatusIcon extends StatelessWidget {
  final SyncStatus status;

  const _SyncStatusIcon({required this.status});

  @override
  Widget build(BuildContext context) {
    return switch (status) {
      SyncStatus.idle => const SizedBox.shrink(),
      SyncStatus.syncing => const SizedBox(height: 24, width: 24, child: CircularProgressIndicator(strokeWidth: 2)),
      SyncStatus.success => const Icon(AppIcons.circleCheck, color: Colors.green),
      SyncStatus.error => Icon(AppIcons.circleAlert, color: context.colorScheme.error),
    };
  }
}

class _SyncStatsCounts extends ConsumerWidget {
  const _SyncStatsCounts();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.watch(driftProvider);
    final assetService = ref.watch(assetServiceProvider);
    final localAlbumService = LocalAlbumService(db.localAlbumRepository);
    final remoteAlbumService = ref.watch(remoteAlbumServiceProvider);
    final memoryService = MemoryService(db.memoryRepository);
    final appSettingsService = ref.watch(appSettingsServiceProvider);

    Future<List<dynamic>> loadCounts() async {
      final assetCounts = assetService.getAssetCounts();
      final localAlbumCounts = localAlbumService.getCount();
      final remoteAlbumCounts = remoteAlbumService.getCount();
      final memoryCount = memoryService.getCount();
      final getLocalHashedCount = assetService.getLocalHashedCount();

      return await Future.wait([assetCounts, localAlbumCounts, remoteAlbumCounts, memoryCount, getLocalHashedCount]);
    }

    return FutureBuilder(
      future: loadCounts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: SizedBox(height: 48, width: 48, child: CircularProgressIndicator()));
        }

        if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                context.t.reset_sqlite_error_hint,
                style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
              ),
            ),
          );
        }

        final assetCounts = snapshot.data![0]! as (int, int);
        final localAssetCount = assetCounts.$1;
        final remoteAssetCount = assetCounts.$2;

        final localAlbumCount = snapshot.data![1]! as int;
        final remoteAlbumCount = snapshot.data![2]! as int;
        final memoryCount = snapshot.data![3]! as int;
        final localHashedCount = snapshot.data![4]! as int;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _CountsSection(
              title: context.t.assets,
              left: EntityCountTile(label: context.t.local, count: localAssetCount, icon: AppIcons.smartphone),
              right: EntityCountTile(label: context.t.remote, count: remoteAssetCount, icon: AppIcons.cloud),
            ),
            _CountsSection(
              title: context.t.albums,
              left: EntityCountTile(label: context.t.local, count: localAlbumCount, icon: AppIcons.smartphone),
              right: EntityCountTile(label: context.t.remote, count: remoteAlbumCount, icon: AppIcons.cloud),
            ),
            _CountsSection(
              title: context.t.other,
              left: EntityCountTile(label: context.t.memories, count: memoryCount, icon: AppIcons.calendar),
              right: EntityCountTile(label: context.t.hashed_assets, count: localHashedCount, icon: AppIcons.tag),
            ),
            // To be removed once the experimental feature is stable
            if (CurrentPlatform.isAndroid &&
                appSettingsService.getSetting<bool>(AppSettingsEnum.manageLocalMediaAndroid))
              Consumer(
                builder: (context, ref, _) {
                  final counts = ref.watch(trashedAssetsCountProvider);
                  return counts.when(
                    data: (c) => _CountsSection(
                      title: context.t.trash,
                      left: EntityCountTile(label: context.t.local, count: c.total, icon: AppIcons.trash2),
                      right: EntityCountTile(label: context.t.hashed_assets, count: c.hashed, icon: AppIcons.tag),
                    ),
                    loading: () => const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    error: (e, st) => Padding(padding: const EdgeInsets.all(16), child: Text('Error: $e')),
                  );
                },
              ),
          ],
        );
      },
    );
  }
}

/// Two count cells side by side in one grouped card.
class _CountsSection extends StatelessWidget {
  const _CountsSection({required this.title, required this.left, required this.right});

  final String title;
  final Widget left;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return SettingsSection(
      title: title,
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: left),
              VerticalDivider(width: .5, thickness: .5, color: context.colorScheme.outlineVariant),
              Expanded(child: right),
            ],
          ),
        ),
      ],
    );
  }
}
