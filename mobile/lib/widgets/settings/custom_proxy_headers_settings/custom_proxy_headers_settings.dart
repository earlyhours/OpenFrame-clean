import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_ui/immich_ui.dart';

class CustomProxyHeaderSettings extends StatelessWidget {
  const CustomProxyHeaderSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: context.t.advanced_settings_proxy_headers_title,
      subtitle: context.t.advanced_settings_proxy_headers_subtitle,
      onTap: () => context.pushRoute(const HeaderSettingsRoute()),
    );
  }
}
