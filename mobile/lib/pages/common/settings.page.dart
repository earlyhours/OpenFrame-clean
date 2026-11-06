import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' hide Store;
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_mobile/widgets/settings/advanced_settings.dart';
import 'package:immich_mobile/widgets/settings/asset_list_settings/asset_list_settings.dart';
import 'package:immich_mobile/widgets/settings/asset_viewer_settings/asset_viewer_settings.dart';
import 'package:immich_mobile/widgets/settings/backup_settings/backup_settings.dart';
import 'package:immich_mobile/widgets/settings/beta_sync_settings/sync_status_and_actions.dart';
import 'package:immich_mobile/widgets/settings/free_up_space_settings.dart';
import 'package:immich_mobile/widgets/settings/language_settings.dart';
import 'package:immich_mobile/widgets/settings/networking_settings/networking_settings.dart';
import 'package:immich_mobile/widgets/settings/notification_setting.dart';
import 'package:immich_mobile/widgets/settings/preference_settings/preference_setting.dart';
import 'package:immich_mobile/widgets/settings/settings_profile_card.dart';
import 'package:immich_ui/immich_ui.dart';

enum SettingSection {
  advanced(AppIcons.wrench),
  assetViewer(AppIcons.image),
  backup(AppIcons.cloudUpload),
  freeUpSpace(AppIcons.brushCleaning),
  languages(AppIcons.globe),
  networking(AppIcons.wifi),
  notifications(AppIcons.bell),
  preferences(AppIcons.shapes),
  timeline(AppIcons.layoutGrid),
  beta(AppIcons.refreshCw);

  final IconData icon;

  String title(Translations t) => switch (this) {
    SettingSection.advanced => t.advanced,
    SettingSection.assetViewer => t.asset_viewer_settings_title,
    SettingSection.backup => t.backup,
    SettingSection.freeUpSpace => t.free_up_space,
    SettingSection.languages => t.language,
    SettingSection.networking => t.networking_settings,
    SettingSection.notifications => t.notifications,
    SettingSection.preferences => t.preferences_settings_title,
    SettingSection.timeline => t.asset_list_settings_title,
    SettingSection.beta => t.sync_status,
  };

  String subtitle(Translations t) => switch (this) {
    SettingSection.advanced => t.advanced_settings_tile_subtitle,
    SettingSection.assetViewer => t.asset_viewer_settings_subtitle,
    SettingSection.backup => t.backup_settings_subtitle,
    SettingSection.freeUpSpace => t.free_up_space_settings_subtitle,
    SettingSection.languages => t.setting_languages_subtitle,
    SettingSection.networking => t.networking_subtitle,
    SettingSection.notifications => t.setting_notifications_subtitle,
    SettingSection.preferences => t.preferences_settings_subtitle,
    SettingSection.timeline => t.asset_list_settings_subtitle,
    SettingSection.beta => t.sync_status_subtitle,
  };

  Widget get widget => switch (this) {
    SettingSection.advanced => const AdvancedSettings(),
    SettingSection.assetViewer => const AssetViewerSettings(),
    SettingSection.backup => const BackupSettings(),
    SettingSection.freeUpSpace => const FreeUpSpaceSettings(),
    SettingSection.languages => const LanguageSettings(),
    SettingSection.networking => const NetworkingSettings(),
    SettingSection.notifications => const NotificationSetting(),
    SettingSection.preferences => const PreferenceSetting(),
    SettingSection.timeline => const AssetListSettings(),
    SettingSection.beta => const SyncStatusAndActions(),
  };

  const SettingSection(this.icon);
}

/// The order of the settings list, grouped like Apple's Settings: each inner
/// list is one inset group with an optional header.
final List<({String Function(Translations t)? header, List<SettingSection> items})> _groups = [
  (
    header: (t) => t.library$,
    items: [SettingSection.timeline, SettingSection.assetViewer, SettingSection.backup, SettingSection.freeUpSpace],
  ),
  (
    header: (t) => t.general,
    items: [
      SettingSection.preferences,
      SettingSection.notifications,
      SettingSection.languages,
      SettingSection.networking,
    ],
  ),
  (header: (t) => t.advanced, items: [SettingSection.advanced, SettingSection.beta]),
];

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isMobile ? null : AppBar(centerTitle: false, title: Text(context.t.settings)),
      body: context.isMobile ? const _MobileLayout() : const _TabletLayout(),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return CustomScrollView(
      slivers: [
        LargeTitleSliverAppBar(title: t.settings),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SettingsProfileCard(),
              for (final group in _groups)
                SettingsSection(
                  title: group.header?.call(t),
                  hasLeadingBadges: true,
                  children: [
                    for (final section in group.items)
                      SettingsTile(
                        icon: section.icon,
                        title: section.title(t),
                        onTap: () => section == SettingSection.beta
                            ? context.pushRoute(const SyncStatusRoute())
                            : context.pushRoute(SettingsSubRoute(section: section)),
                      ),
                  ],
                ),
              SettingsSection(
                title: t.about,
                hasLeadingBadges: true,
                children: [
                  SettingsTile(
                    icon: AppIcons.sparkles,
                    title: t.whats_new,
                    onTap: () => context.pushRoute(const WhatsNewRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32 + MediaQuery.paddingOf(context).bottom)),
      ],
    );
  }
}

class _TabletLayout extends HookWidget {
  const _TabletLayout();

  @override
  Widget build(BuildContext context) {
    final selectedSection = useState<SettingSection>(SettingSection.values.first);
    final t = context.t;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: ListView(
            padding: const EdgeInsets.only(top: 8, bottom: 32),
            children: [
              const SettingsProfileCard(),
              for (final group in _groups)
                SettingsSection(
                  title: group.header?.call(t),
                  hasLeadingBadges: true,
                  children: [
                    for (final section in group.items)
                      SettingsTile(
                        icon: section.icon,
                        title: section.title(t),
                        showChevron: false,
                        selected: section == selectedSection.value,
                        onTap: () => selectedSection.value = section,
                      ),
                  ],
                ),
              SettingsSection(
                title: t.about,
                hasLeadingBadges: true,
                children: [
                  SettingsTile(
                    icon: AppIcons.sparkles,
                    title: t.whats_new,
                    onTap: () => context.pushRoute(const WhatsNewRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
        const VerticalDivider(width: 1),
        Expanded(flex: 4, child: selectedSection.value.widget),
      ],
    );
  }
}

@RoutePage()
class SettingsSubPage extends StatelessWidget {
  const SettingsSubPage(this.section, {super.key});

  final SettingSection section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text(section.title(context.t))),
      body: section.widget,
    );
  }
}
