import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';
import 'package:immich_ui/src/components/settings/settings_tile.dart';

/// A row with a leading badge, a title, a description and a button under the
/// text. For one-off prompts such as enabling a permission.
class SettingsButtonListTile extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String title;
  final Widget? subtitle;
  final String? subtileText;
  final String buttonText;
  final Widget? child;
  final void Function()? onButtonTap;

  const SettingsButtonListTile({
    required this.icon,
    this.iconColor,
    required this.title,
    this.subtileText,
    this.subtitle,
    required this.buttonText,
    this.child,
    this.onButtonTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SettingsMetrics.rowInset),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsIconBadge(icon: icon, tint: iconColor),
          const SizedBox(width: SettingsMetrics.badgeGap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(title, style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
                ),
                if (subtileText != null) ...[
                  const SizedBox(height: 2),
                  Text(subtileText!, style: context.textTheme.bodySmall),
                ],
                ?subtitle,
                const SizedBox(height: 12),
                child ?? ElevatedButton(onPressed: onButtonTap, child: Text(buttonText)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
