import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';

/// A muted section header with optional explanatory [subtitle].
///
/// Prefer [SettingsSection.title] and [SettingsSection.footer]; this is for
/// headers that sit outside a section.
class SettingGroupTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final EdgeInsetsGeometry? contentPadding;

  const SettingGroupTitle({super.key, required this.title, this.icon, this.subtitle, this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          contentPadding ?? const EdgeInsets.fromLTRB(SettingsMetrics.pageInset + 4, 0, SettingsMetrics.pageInset, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: context.colorScheme.onSurfaceVariant, size: 16),
                const SizedBox(width: 6),
              ],
              Flexible(
                child: Text(
                  title,
                  style: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.onSurfaceVariant),
                ),
              ),
            ],
          ),
          if (subtitle != null) ...[const SizedBox(height: 4), Text(subtitle!, style: context.textTheme.bodySmall)],
        ],
      ),
    );
  }
}
