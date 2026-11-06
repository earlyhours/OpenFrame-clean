import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/providers/auth.provider.dart';
import 'package:immich_mobile/providers/network.provider.dart';
import 'package:immich_ui/immich_ui.dart';

class LocalNetworkPreference extends HookConsumerWidget {
  const LocalNetworkPreference({super.key, required this.enabled});

  final bool enabled;

  Future<String?> _showEditDialog(
    BuildContext context,
    String title,
    String hintText,
    String initialValue, {
    bool isUrlField = false,
  }) {
    final controller = TextEditingController(text: initialValue);

    return showAppDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: isUrlField
            ? ImmichURLInput(controller: controller, autofocus: true, keyboardAction: .done, hintText: hintText)
            : ImmichTextInput(controller: controller, autofocus: true, keyboardAction: .done, hintText: hintText),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.t.cancel.toUpperCase(), style: const TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: Text(context.t.save.toUpperCase()),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wifiNameText = useState("");
    final localEndpointText = useState("");

    useEffect(() {
      final wifiName = ref.read(authProvider.notifier).getSavedWifiName();
      final localEndpoint = ref.read(authProvider.notifier).getSavedLocalEndpoint();

      if (wifiName != null) {
        wifiNameText.value = wifiName;
      }

      if (localEndpoint != null) {
        localEndpointText.value = localEndpoint;
      }

      return null;
    }, []);

    Future<void> saveWifiName(String wifiName) {
      wifiNameText.value = wifiName;
      return ref.read(authProvider.notifier).saveWifiName(wifiName);
    }

    Future<void> saveLocalEndpoint(String url) {
      localEndpointText.value = url;
      return ref.read(authProvider.notifier).saveLocalEndpoint(url);
    }

    Future<void> handleEditWifiName() async {
      final wifiName = await _showEditDialog(
        context,
        context.t.wifi_name,
        context.t.your_wifi_name,
        wifiNameText.value,
      );

      if (wifiName != null) {
        await saveWifiName(wifiName);
      }
    }

    Future<void> handleEditServerEndpoint() async {
      final localEndpoint = await _showEditDialog(
        context,
        context.t.server_endpoint,
        "http://local-ip:2283",
        localEndpointText.value,
        isUrlField: true,
      );

      if (localEndpoint != null) {
        await saveLocalEndpoint(localEndpoint);
      }
    }

    Future<void> autofillCurrentNetwork() async {
      final wifiName = await ref.read(networkProvider.notifier).getWifiName();
      if (!context.mounted) {
        return;
      }

      if (wifiName == null) {
        context.showSnackBar(
          SnackBar(
            content: Text(
              context.t.get_wifiname_error,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: context.colorScheme.onSecondary,
              ),
            ),
            backgroundColor: context.colorScheme.secondary,
          ),
        );
      } else {
        unawaited(saveWifiName(wifiName));
      }

      final serverEndpoint = ref.read(authProvider.notifier).getServerEndpoint();

      if (serverEndpoint != null) {
        unawaited(saveLocalEndpoint(serverEndpoint));
      }
    }

    return SettingsSection(
      title: context.t.local_network,
      footer: context.t.local_network_sheet_info,
      hasLeadingBadges: true,
      children: [
        SettingsTile(
          enabled: enabled,
          icon: AppIcons.wifi,
          title: context.t.wifi_name,
          subtitle: wifiNameText.value.isEmpty ? context.t.enter_wifi_name : wifiNameText.value,
          monoSubtitle: wifiNameText.value.isNotEmpty,
          trailing: Icon(AppIcons.pencil, size: 18, color: context.colorScheme.onSurfaceVariant),
          onTap: handleEditWifiName,
        ),
        SettingsTile(
          enabled: enabled,
          icon: AppIcons.network,
          title: context.t.server_endpoint,
          subtitle: localEndpointText.value.isEmpty ? "http://local-ip:2283" : localEndpointText.value,
          monoSubtitle: localEndpointText.value.isNotEmpty,
          trailing: Icon(AppIcons.pencil, size: 18, color: context.colorScheme.onSurfaceVariant),
          onTap: handleEditServerEndpoint,
        ),
        Padding(
          padding: const EdgeInsets.all(SettingsMetrics.rowInset),
          child: SizedBox(
            height: 48,
            child: OutlinedButton.icon(
              icon: const Icon(AppIcons.wifi),
              label: Text(context.t.use_current_connection),
              onPressed: enabled ? autofillCurrentNetwork : null,
            ),
          ),
        ),
      ],
    );
  }
}
