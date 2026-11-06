import 'package:flutter/material.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';

/// A muted sub header. Same look as [SettingsSectionHeader].
class SettingsSubTitle extends StatelessWidget {
  final String title;

  const SettingsSubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) => SettingsSectionHeader(title: title);
}
