import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:immich_ui/immich_ui.dart';

enum ToastType { info, success, error }

class ImmichToast {
  static void show({
    required BuildContext context,
    required String msg,
    ToastType toastType = ToastType.info,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int durationInSecond = 3,
  }) {
    final fToast = FToast();
    fToast.init(context);

    final style = ToastStyle.of(context, switch (toastType) {
      ToastType.info => SnackbarType.info,
      ToastType.success => SnackbarType.success,
      ToastType.error => SnackbarType.error,
    });

    fToast.showToast(
      child: _ToastEntrance(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14.0)),
            color: style.background,
            border: Border.fromBorderSide(style.border),
            boxShadow: style.shadow,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(style.icon, color: style.iconColor, size: 20),
              const SizedBox(width: 10.0),
              Flexible(child: Text(msg, style: style.textStyle)),
            ],
          ),
        ),
      ),
      positionedToastBuilder: (context, child, gravity) {
        final isTop = gravity == ToastGravity.TOP;
        return Positioned(
          top: isTop ? 150 : null,
          bottom: isTop ? null : 150 + MediaQuery.of(context).viewInsets.bottom,
          left: MediaQuery.of(context).size.width / 2 - 150,
          right: MediaQuery.of(context).size.width / 2 - 150,
          child: IgnorePointer(child: child),
        );
      },
      gravity: gravity,
      toastDuration: Duration(seconds: durationInSecond),
      // The package fades with an ease-in curve; a short duration keeps it
      // from feeling sluggish in either direction.
      fadeDuration: AppMotion.of(context, const Duration(milliseconds: 200)),
    );
  }
}

/// Lifts the toast a few pixels into place while the package fades it in.
class _ToastEntrance extends StatelessWidget {
  final Widget child;

  const _ToastEntrance({required this.child});

  @override
  Widget build(BuildContext context) {
    if (AppMotion.reduced(context)) {
      return child;
    }
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 1, end: 0),
      duration: AppMotion.base,
      curve: AppMotion.emphasized,
      child: child,
      builder: (context, t, child) => Transform.translate(offset: Offset(0, 14 * t), child: child),
    );
  }
}
