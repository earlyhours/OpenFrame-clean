import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_tile.dart';

/// A tappable [SettingsTile] with an optional status pill (for example a
/// permission state).
class SettingsActionTile extends StatelessWidget {
  const SettingsActionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onActionTap,
    this.statusText,
    this.statusColor,
  });

  final String title;
  final String subtitle;
  final String? statusText;
  final Color? statusColor;
  final VoidCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    final color = statusColor ?? context.colorScheme.onSurfaceVariant;

    return SettingsTile(
      title: title,
      subtitle: subtitle,
      onTap: onActionTap,
      trailing: statusText == null
          ? null
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                color: color.withValues(alpha: .12),
              ),
              child: Text(
                statusText!,
                style: context.textTheme.labelSmall?.copyWith(color: color, fontWeight: FontWeight.w600),
              ),
            ),
      showChevron: true,
    );
  }
}
