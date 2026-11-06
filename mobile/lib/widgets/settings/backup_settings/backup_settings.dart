import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/domain/models/album/local_album.model.dart';
import 'package:immich_mobile/domain/models/config/app_config.dart';
import 'package:immich_mobile/domain/models/settings_key.dart';
import 'package:immich_mobile/domain/services/sync_linked_album.service.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/extensions/platform_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/providers/background_sync.provider.dart';
import 'package:immich_mobile/providers/backup/backup_album.provider.dart';
import 'package:immich_mobile/providers/infrastructure/platform.provider.dart';
import 'package:immich_mobile/providers/infrastructure/settings.provider.dart';
import 'package:immich_mobile/providers/user.provider.dart';
import 'package:immich_ui/immich_ui.dart';

class BackupSettings extends StatelessWidget {
  const BackupSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsSubPageScaffold(
      settings: [
        SettingsSection(
          title: context.t.network_requirements,
          children: const [_UseCellularForVideosButton(), _UseCellularForPhotosButton()],
        ),
        if (CurrentPlatform.isAndroid)
          SettingsSection(
            title: context.t.background_options,
            children: const [_BackupOnlyWhenChargingButton(), _BackupDelaySlider()],
          ),
        SettingsSection(title: context.t.backup_albums_sync, children: const [_AlbumSyncActionButton()]),
      ],
    );
  }
}

class _AlbumSyncActionButton extends ConsumerStatefulWidget {
  const _AlbumSyncActionButton();

  @override
  ConsumerState<_AlbumSyncActionButton> createState() => _AlbumSyncActionButtonState();
}

class _AlbumSyncActionButtonState extends ConsumerState<_AlbumSyncActionButton> {
  bool isAlbumSyncInProgress = false;

  Future<void> _manualSyncAlbums() async {
    setState(() {
      isAlbumSyncInProgress = true;
    });

    try {
      final backgroundSync = ref.read(backgroundSyncProvider);
      await backgroundSync.syncLinkedAlbum();
      await backgroundSync.syncRemote();
    } catch (_) {
    } finally {
      Future.delayed(const Duration(seconds: 1), () {
        if (!mounted) {
          return;
        }
        setState(() {
          isAlbumSyncInProgress = false;
        });
      });
    }
  }

  Future<void> _manageLinkedAlbums() async {
    final currentUser = ref.read(currentUserProvider);
    if (currentUser == null) {
      return;
    }
    final localAlbums = ref.read(backupAlbumProvider);
    final selectedBackupAlbums = localAlbums
        .where((album) => album.backupSelection == BackupSelection.selected)
        .toList();

    await ref.read(syncLinkedAlbumServiceProvider).manageLinkedAlbums(selectedBackupAlbums, currentUser.id);
  }

  @override
  Widget build(BuildContext context) {
    final albumSyncEnable = ref.watch(appConfigProvider.select((c) => c.backup.syncAlbums));
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingsTile(
          title: context.t.sync_albums,
          subtitle: context.t.sync_upload_album_setting_subtitle,
          showChevron: false,
          onTap: () => _setAlbumSync(!albumSyncEnable),
          trailing: SettingsSwitch(value: albumSyncEnable, onChanged: _setAlbumSync),
        ),
        AnimatedSize(
          duration: AppMotion.of(context, AppMotion.base),
          curve: AppMotion.emphasized,
          alignment: Alignment.topCenter,
          child: AnimatedOpacity(
            duration: AppMotion.of(context, AppMotion.fast),
            curve: AppMotion.emphasized,
            opacity: albumSyncEnable ? 1.0 : 0.0,
            child: albumSyncEnable
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SettingsDivider(),
                      SettingsTile(
                        onTap: _manualSyncAlbums,
                        title: context.t.organize_into_albums,
                        subtitle: context.t.organize_into_albums_description,
                        showChevron: false,
                        trailing: isAlbumSyncInProgress
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator.adaptive(strokeWidth: 2),
                              )
                            : Icon(AppIcons.refreshCw, size: 20, color: context.colorScheme.onSurfaceVariant),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  Future<void> _setAlbumSync(bool newValue) async {
    await ref.read(settingsProvider).write(.backupSyncAlbums, newValue);

    if (newValue == true) {
      await _manageLinkedAlbums();
    }
  }
}

class _BackupSwitchTile extends ConsumerWidget {
  final SettingsKey<bool> metadataKey;
  final bool Function(AppConfig) selector;
  final String title;
  final String subtitle;
  final void Function(bool)? onChanged;

  const _BackupSwitchTile({
    required this.metadataKey,
    required this.selector,
    required this.title,
    required this.subtitle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(appConfigProvider.select(selector));
    Future<void> update(bool newValue) async {
      await ref.read(settingsProvider).write(metadataKey, newValue);
      onChanged?.call(newValue);
    }

    return SettingsTile(
      title: title,
      subtitle: subtitle,
      showChevron: false,
      onTap: () => update(!value),
      trailing: SettingsSwitch(value: value, onChanged: update),
    );
  }
}

class _UseCellularForVideosButton extends StatelessWidget {
  const _UseCellularForVideosButton();

  @override
  Widget build(BuildContext context) {
    return _BackupSwitchTile(
      metadataKey: SettingsKey.backupUseCellularForVideos,
      selector: (c) => c.backup.useCellularForVideos,
      title: context.t.videos,
      subtitle: context.t.network_requirement_videos_upload,
    );
  }
}

class _UseCellularForPhotosButton extends StatelessWidget {
  const _UseCellularForPhotosButton();

  @override
  Widget build(BuildContext context) {
    return _BackupSwitchTile(
      metadataKey: SettingsKey.backupUseCellularForPhotos,
      selector: (c) => c.backup.useCellularForPhotos,
      title: context.t.photos,
      subtitle: context.t.network_requirement_photos_upload,
    );
  }
}

class _BackupOnlyWhenChargingButton extends ConsumerWidget {
  const _BackupOnlyWhenChargingButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fgService = ref.watch(backgroundWorkerFgServiceProvider);
    return _BackupSwitchTile(
      metadataKey: SettingsKey.backupRequireCharging,
      selector: (c) => c.backup.requireCharging,
      title: context.t.charging,
      subtitle: context.t.charging_requirement_mobile_backup,
      onChanged: (value) {
        unawaited(fgService.configure(requireCharging: value));
      },
    );
  }
}

class _BackupDelaySlider extends ConsumerWidget {
  const _BackupDelaySlider();

  static int backupDelayToSliderValue(int ms) => switch (ms) {
    5 => 0,
    30 => 1,
    120 => 2,
    _ => 3,
  };

  static int backupDelayToSeconds(int v) => switch (v) {
    0 => 5,
    1 => 30,
    2 => 120,
    _ => 600,
  };

  static String formatBackupDelaySliderValue(BuildContext context, int v) => switch (v) {
    0 => context.t.setting_notifications_notify_seconds(count: 5),
    1 => context.t.setting_notifications_notify_seconds(count: 30),
    2 => context.t.setting_notifications_notify_minutes(count: 2),
    _ => context.t.setting_notifications_notify_minutes(count: 10),
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final triggerDelay = ref.watch(appConfigProvider.select((c) => c.backup.triggerDelay));
    final currentValue = backupDelayToSliderValue(triggerDelay);
    return Padding(
      padding: const EdgeInsets.fromLTRB(SettingsMetrics.rowInset, 12, SettingsMetrics.rowInset, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.t.backup_controller_page_background_delay(
              duration: formatBackupDelaySliderValue(context, currentValue),
            ),
            style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
          SettingsSlider(
            value: currentValue.toDouble(),
            onChanged: (double v) async {
              final seconds = backupDelayToSeconds(v.toInt());
              await ref.read(settingsProvider).write(SettingsKey.backupTriggerDelay, seconds);
            },
            onChangeEnd: (double v) async {
              final seconds = backupDelayToSeconds(v.toInt());
              await ref.read(settingsProvider).write(SettingsKey.backupTriggerDelay, seconds);
            },
            max: 3.0,
            min: 0.0,
            divisions: 3,
            label: formatBackupDelaySliderValue(context, currentValue),
          ),
        ],
      ),
    );
  }
}
