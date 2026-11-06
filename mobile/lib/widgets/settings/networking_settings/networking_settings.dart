import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/models/auth/auxilary_endpoint.model.dart';
import 'package:immich_mobile/providers/infrastructure/settings.provider.dart';
import 'package:immich_mobile/providers/network.provider.dart';
import 'package:immich_mobile/utils/url_helper.dart';
import 'package:immich_mobile/widgets/settings/networking_settings/external_network_preference.dart';
import 'package:immich_mobile/widgets/settings/networking_settings/local_network_preference.dart';
import 'package:immich_ui/immich_ui.dart';

class NetworkingSettings extends HookConsumerWidget {
  const NetworkingSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentEndpoint = getServerUrl();
    final featureEnabled = useState(ref.watch(appConfigProvider).network.autoEndpointSwitching);
    useValueChanged<bool, void>(featureEnabled.value, (_, _) {
      unawaited(ref.read(settingsProvider).write(.networkAutoEndpointSwitching, featureEnabled.value));
    });

    Future<void> checkWifiReadPermission() async {
      final [hasLocationInUse, hasLocationAlways] = await Future.wait([
        ref.read(networkProvider.notifier).getWifiReadPermission(),
        ref.read(networkProvider.notifier).getWifiReadBackgroundPermission(),
      ]);

      bool? isGrantLocationAlwaysPermission;

      if (!hasLocationInUse) {
        await showAppDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(context.t.location_permission),
              content: Text(context.t.location_permission_content),
              actions: [
                TextButton(
                  onPressed: () async {
                    final isGrant = await ref.read(networkProvider.notifier).requestWifiReadPermission();

                    if (!context.mounted) {
                      return;
                    }

                    Navigator.pop(context, isGrant);
                  },
                  child: Text(context.t.grant_permission),
                ),
              ],
            );
          },
        );
      }

      if (!context.mounted) {
        return;
      }

      if (!hasLocationAlways) {
        isGrantLocationAlwaysPermission = await showAppDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(context.t.background_location_permission),
              content: Text(context.t.background_location_permission_content),
              actions: [
                TextButton(
                  onPressed: () async {
                    final isGrant = await ref.read(networkProvider.notifier).requestWifiReadBackgroundPermission();

                    if (!context.mounted) {
                      return;
                    }

                    Navigator.pop(context, isGrant);
                  },
                  child: Text(context.t.grant_permission),
                ),
              ],
            );
          },
        );
      }

      if (isGrantLocationAlwaysPermission != null && !isGrantLocationAlwaysPermission) {
        await ref.read(networkProvider.notifier).openSettings();
      }
    }

    useEffect(() {
      if (featureEnabled.value == true) {
        unawaited(checkWifiReadPermission());
      }
      return null;
    }, [featureEnabled.value]);

    final success = context.themeData.extension<ImmichColors>()?.success ?? Colors.green;

    return ListView(
      padding: EdgeInsets.only(top: 8, bottom: 32 + MediaQuery.paddingOf(context).bottom),
      children: <Widget>[
        SettingsSection(
          title: context.t.current_server_address,
          hasLeadingBadges: true,
          children: [
            SettingsTile(
              icon: (currentEndpoint?.startsWith('https') ?? false) ? AppIcons.lockKeyhole : AppIcons.globe,
              title: currentEndpoint ?? "--",
              monoTitle: true,
              trailing: Icon(
                currentEndpoint != null ? AppIcons.circleCheck : AppIcons.circle,
                size: 20,
                color: currentEndpoint != null ? success : context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        SettingsSection(
          children: [
            SettingsSwitchListTile(
              enabled: true,
              valueNotifier: featureEnabled,
              title: context.t.automatic_endpoint_switching_title,
              subtitle: context.t.automatic_endpoint_switching_subtitle,
            ),
          ],
        ),
        LocalNetworkPreference(enabled: featureEnabled.value),
        ExternalNetworkPreference(enabled: featureEnabled.value),
      ],
    );
  }
}

class NetworkStatusIcon extends StatelessWidget {
  const NetworkStatusIcon({super.key, required this.status, this.enabled = true}) : super();

  final AuxCheckStatus status;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: AppMotion.of(context, AppMotion.fast),
      switchInCurve: AppMotion.emphasized,
      switchOutCurve: Curves.easeInCubic,
      child: buildIcon(context),
    );
  }

  Widget buildIcon(BuildContext context) => switch (status) {
    AuxCheckStatus.loading => Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: SizedBox(
        width: 18,
        height: 18,
        child: CircularProgressIndicator(color: context.primaryColor, strokeWidth: 2, key: const ValueKey('loading')),
      ),
    ),
    AuxCheckStatus.valid =>
      enabled
          ? const Icon(AppIcons.circleCheck, color: Colors.green, key: ValueKey('success'))
          : Icon(
              AppIcons.circleCheck,
              color: context.colorScheme.onSurface.withAlpha(100),
              key: const ValueKey('success'),
            ),
    AuxCheckStatus.error =>
      enabled
          ? const Icon(AppIcons.circleAlert, color: Colors.red, key: ValueKey('error'))
          : const Icon(AppIcons.circleAlert, color: Colors.grey, key: ValueKey('error')),
    _ => const Icon(AppIcons.circle, key: ValueKey('unknown')),
  };
}
