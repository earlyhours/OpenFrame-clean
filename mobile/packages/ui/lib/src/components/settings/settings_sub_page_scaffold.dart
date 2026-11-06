import 'package:flutter/material.dart';

/// The scrolling body of a settings sub page. Pass [SettingsSection]s (they
/// bring their own page inset and spacing) or any other box widget.
class SettingsSubPageScaffold extends StatelessWidget {
  final List<Widget> settings;

  /// Kept for older call sites. Sections already separate themselves.
  final bool showDivider;

  const SettingsSubPageScaffold({super.key, required this.settings, this.showDivider = false});

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.paddingOf(context).bottom;
    return ListView(
      padding: EdgeInsets.only(top: 8, bottom: 32 + bottom),
      children: settings,
    );
  }
}
