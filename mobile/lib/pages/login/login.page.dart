import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/extensions/theme_extensions.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_mobile/widgets/forms/login/login_backdrop.dart';
import 'package:immich_mobile/widgets/forms/login/login_form.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appVersion = useState<String?>(null);

    Future<void> getAppInfo() async {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      appVersion.value = packageInfo.version;
    }

    useEffect(() {
      unawaited(getAppInfo());
      return null;
    }, const []);

    // The backdrop sits outside the Scaffold so it keeps the full screen size
    // while the keyboard resizes the body (otherwise the glow visibly rescales).
    return LoginBackdrop(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: LoginForm()),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: appVersion.value == null ? 0 : 1,
                    duration: AppMotion.of(context, AppMotion.base),
                    child: Text(
                      'v${appVersion.value ?? ''}',
                      style: TextStyle(
                        color: context.colorScheme.onSurfaceSecondary,
                        fontWeight: FontWeight.w400,
                        fontFamily: "GeistMono",
                      ),
                    ),
                  ),
                  const Text(' '),
                  GestureDetector(
                    child: Text(
                      'Logs',
                      style: TextStyle(
                        color: context.primaryColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: "GeistMono",
                      ),
                    ),
                    onTap: () {
                      unawaited(context.pushRoute(const AppLogRoute()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
