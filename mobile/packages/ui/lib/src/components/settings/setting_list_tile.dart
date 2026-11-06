import 'package:flutter/material.dart';
import 'package:immich_ui/src/components/settings/settings_tile.dart';

/// A [SettingsTile] taking a free-form [leading] and [trailing] widget.
class SettingListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingListTile({required this.title, this.subtitle, this.leading, this.trailing, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: title,
      subtitle: subtitle,
      leading: leading,
      trailing: trailing,
      showChevron: false,
      onTap: onTap,
    );
  }
}
