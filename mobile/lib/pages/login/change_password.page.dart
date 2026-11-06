import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:immich_mobile/widgets/forms/change_password_form.dart';
import 'package:immich_mobile/widgets/forms/login/login_backdrop.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(body: LoginBackdrop(child: ChangePasswordForm()));
}
