import 'dart:async';

import 'package:flutter/material.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:immich_ui/src/internal.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class SnackbarAction {
  // Optional label for the action button. Falls back to the localized "Undo" label when null
  final String? label;
  final FutureOr<void> Function() onPressed;

  const SnackbarAction({this.label, required this.onPressed});
}

class SnackbarManager {
  const SnackbarManager();

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? show(
    String message,
    SnackbarType type, {
    Duration? duration,
    SnackbarAction? action,
  }) {
    final messenger = scaffoldMessengerKey.currentState;
    final context = scaffoldMessengerKey.currentContext;
    if (messenger == null || context == null) {
      return null;
    }

    duration ??= const .new(seconds: 4);
    messenger.hideCurrentSnackBar();
    return messenger.showSnackBar(
      _build(context, message, type, duration, action),
      snackBarAnimationStyle: AppMotion.styleOf(context, AppMotion.snackbar),
    );
  }

  SnackBar _build(
    BuildContext context,
    String message,
    SnackbarType type,
    Duration duration,
    SnackbarAction? action,
  ) {
    final scheme = Theme.of(context).colorScheme;
    final style = ToastStyle.of(context, type);

    SnackBarAction? snackAction;
    if (action != null) {
      snackAction = .new(
        label: action.label ?? context.translations.undo,
        onPressed: action.onPressed,
        textColor: scheme.primary,
      );
    }

    return SnackBar(
      behavior: .floating,
      backgroundColor: style.background,
      elevation: 6,
      duration: duration,
      shape: RoundedRectangleBorder(
        borderRadius: const .all(.circular(14)),
        side: style.border,
      ),
      // A snackbar carrying an action stays up until it is tapped by default; our actions are optional
      persist: false,
      content: Row(
        children: [
          Icon(style.icon, color: style.iconColor, size: ImmichIconSize.sm),
          const SizedBox(width: ImmichSpacing.md),
          Expanded(
            child: Text(
              message,
              maxLines: 2,
              overflow: .ellipsis,
              style: style.textStyle,
            ),
          ),
        ],
      ),
      action: snackAction,
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? info(
    String message, {
    Duration? duration,
    SnackbarAction? action,
  }) => show(message, .info, duration: duration, action: action);

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? success(
    String message, {
    Duration? duration,
    SnackbarAction? action,
  }) => show(message, .success, duration: duration, action: action);

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? error(
    String message, {
    Duration? duration,
    SnackbarAction? action,
  }) => show(message, .error, duration: duration, action: action);
}

const snackbar = SnackbarManager();

/// Shared look of transient messages (snackbars and toasts): a neutral raised
/// surface with a small colored leading icon. Only the icon carries status
/// color; success uses a calm green, errors the scheme's error color.
class ToastStyle {
  const ToastStyle({
    required this.icon,
    required this.iconColor,
    required this.background,
    required this.border,
    required this.textStyle,
  });

  factory ToastStyle.of(BuildContext context, SnackbarType type) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = scheme.brightness == Brightness.dark;
    final (IconData icon, Color iconColor) = switch (type) {
      .info => (AppIcons.info, scheme.primary),
      .success => (AppIcons.check, scheme.primary),
      .error => (AppIcons.circleAlert, scheme.error),
    };
    return ToastStyle(
      icon: icon,
      iconColor: iconColor,
      background: isDark
          ? scheme.surfaceContainerHighest
          : scheme.surfaceContainerLowest,
      border: BorderSide(
        color: scheme.outlineVariant.withValues(alpha: .5),
        width: .5,
      ),
      textStyle: TextStyle(
        fontFamily: theme.textTheme.bodyMedium?.fontFamily,
        color: scheme.onSurface,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        letterSpacing: -.1,
      ),
    );
  }

  /// Calm green for success icons, never for surfaces.
  static const successDark = Color(0xFF3FB950);
  static const successLight = Color(0xFF2E9A44);

  final IconData icon;
  final Color iconColor;
  final Color background;
  final BorderSide border;
  final TextStyle textStyle;

  /// Soft drop shadow for toasts that are not a Material [SnackBar].
  List<BoxShadow> get shadow => const [
    BoxShadow(color: Color(0x33000000), blurRadius: 18, offset: Offset(0, 6)),
  ];
}
