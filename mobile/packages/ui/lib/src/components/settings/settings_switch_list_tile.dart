import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_tile.dart';

/// The switch used across settings: accent track, white thumb.
class SettingsSwitch extends StatelessWidget {
  const SettingsSwitch({super.key, required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: value,
      onChanged: onChanged,
      activeTrackColor: context.primaryColor,
      activeThumbColor: Colors.white,
    );
  }
}

/// A [SettingsTile] with a switch. The whole row toggles.
class SettingsSwitchListTile extends StatelessWidget {
  final ValueNotifier<bool> valueNotifier;
  final String title;
  final bool enabled;
  final String? subtitle;
  final IconData? icon;
  final Function(bool)? onChanged;

  const SettingsSwitchListTile({
    required this.valueNotifier,
    required this.title,
    this.subtitle,
    this.icon,
    this.enabled = true,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void onSwitchChanged(bool value) {
      if (!enabled) {
        return;
      }

      valueNotifier.value = value;
      onChanged?.call(value);
    }

    return ValueListenableBuilder<bool>(
      valueListenable: valueNotifier,
      builder: (context, value, _) => SettingsTile(
        title: title,
        subtitle: subtitle,
        icon: icon,
        enabled: enabled,
        showChevron: false,
        onTap: () => onSwitchChanged(!value),
        trailing: SettingsSwitch(value: value, onChanged: enabled ? onSwitchChanged : null),
      ),
    );
  }
}
