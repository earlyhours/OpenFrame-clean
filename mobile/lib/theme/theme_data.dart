import 'package:flutter/cupertino.dart' show CupertinoPageTransitionsBuilder;
import 'package:flutter/material.dart';

import 'package:immich_mobile/constants/locales.dart';
import 'package:immich_mobile/extensions/theme_extensions.dart';
import 'package:immich_ui/immich_ui.dart';

class ImmichTheme {
  final ColorScheme light;
  final ColorScheme dark;

  const ImmichTheme({required this.light, required this.dark});
}

ThemeData getThemeData({required ColorScheme colorScheme, required Locale locale}) {
  final font = _getFontFamilyFromLocale(locale);
  final mono = font == null ? null : 'GeistMono';
  final isDark = colorScheme.brightness == Brightness.dark;

  // Raised surfaces (menus, dialogs, toasts) step up from the page: lighter
  // than the near-black page in dark mode, near-white over the warm grey page
  // in light mode.
  final raised = isDark ? colorScheme.surfaceContainerHigh : colorScheme.surfaceContainerLowest;
  final hairline = BorderSide(color: colorScheme.outlineVariant.withValues(alpha: isDark ? .6 : .5), width: .5);
  final muted = colorScheme.onSurfaceVariant;

  // Geist type ramp (see DESIGN.md). Colors come from the theme defaults.
  final textTheme = TextTheme(
    displayLarge: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700, letterSpacing: -.8, height: 1.15),
    displayMedium: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, letterSpacing: -.5, height: 1.2),
    // Kept as GeistMono for technical values; prefer `context.monoStyle`.
    displaySmall: TextStyle(fontFamily: mono, fontSize: 12, fontWeight: FontWeight.w500),
    headlineLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700, letterSpacing: -.6, height: 1.15),
    headlineMedium: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600, letterSpacing: -.5, height: 1.2),
    headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: -.4, height: 1.2),
    titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: -.3, height: 1.25),
    titleMedium: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: -.2, height: 1.3),
    titleSmall: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: -.1, height: 1.3),
    bodyLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: -.1, height: 1.4),
    bodyMedium: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: -.05, height: 1.4),
    bodySmall: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, height: 1.35, color: muted),
    labelLarge: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: -.1),
    labelMedium: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
    labelSmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: .1),
  ).apply(fontFamily: font);
  // `apply(fontFamily:)` overrides every role; restore mono on displaySmall.
  final themedText = textTheme.copyWith(displaySmall: textTheme.displaySmall?.copyWith(fontFamily: mono));

  final buttonText = TextStyle(fontFamily: font, fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: -.1);
  final buttonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.disabled) ? colorScheme.onSurface.withValues(alpha: .1) : colorScheme.primary,
    ),
    foregroundColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.disabled) ? colorScheme.onSurface.withValues(alpha: .38) : Colors.white,
    ),
    overlayColor: WidgetStatePropertyAll(Colors.white.withValues(alpha: .08)),
    minimumSize: const WidgetStatePropertyAll(Size(64, 50)),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24)),
    elevation: const WidgetStatePropertyAll(0),
    shadowColor: const WidgetStatePropertyAll(Colors.transparent),
    surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
    shape: const WidgetStatePropertyAll(StadiumBorder()),
    textStyle: WidgetStatePropertyAll(buttonText),
  );
  final menuShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(14), side: hairline);
  final menuText = TextStyle(fontFamily: font, fontSize: 15, fontWeight: FontWeight.w400, color: colorScheme.onSurface);
  final menuStyle = MenuStyle(
    backgroundColor: WidgetStatePropertyAll(raised),
    surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
    shadowColor: WidgetStatePropertyAll(Colors.black.withValues(alpha: isDark ? .5 : .18)),
    elevation: const WidgetStatePropertyAll(8),
    shape: WidgetStatePropertyAll(menuShape),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 6)),
  );
  final menuItemStyle = ButtonStyle(
    textStyle: WidgetStatePropertyAll(menuText),
    foregroundColor: WidgetStatePropertyAll(colorScheme.onSurface),
    iconColor: WidgetStatePropertyAll(muted),
    minimumSize: const WidgetStatePropertyAll(Size(180, 44)),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
    backgroundColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? colorScheme.onSurface.withValues(alpha: .06) : null,
    ),
  );
  final inputRadius = BorderRadius.circular(12);

  return ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    hintColor: colorScheme.onSurfaceSecondary,
    focusColor: colorScheme.primary.withValues(alpha: .2),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    // No ink ripples: presses show a quiet tint (and Pressable scale where used),
    // which reads calmer and more precise than a spreading splash.
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: colorScheme.onSurface.withValues(alpha: .06),
    hoverColor: colorScheme.onSurface.withValues(alpha: .04),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: AppPageTransitionsBuilder(delegate: _PhotosPageTransitionsBuilder()),
        TargetPlatform.iOS: AppPageTransitionsBuilder(delegate: _PhotosPageTransitionsBuilder()),
      },
    ),
    dividerColor: colorScheme.outlineVariant,
    dividerTheme: DividerThemeData(color: colorScheme.outlineVariant, thickness: .5, space: .5),
    fontFamily: font,
    textTheme: themedText,
    extensions: [
      AppTextStyles(
        mono: AppTextStyles.fallback.mono.copyWith(fontFamily: mono),
        pixel: AppTextStyles.fallback.pixel.copyWith(fontFamily: font == null ? null : 'GeistPixel'),
      ),
    ],
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    // Every implied back/close button uses the Lucide set, not Material icons.
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (_) => const Icon(AppIcons.chevronLeftDir, size: 26),
      closeButtonIconBuilder: (_) => const Icon(AppIcons.x),
      drawerButtonIconBuilder: (_) => const Icon(AppIcons.menu),
      endDrawerButtonIconBuilder: (_) => const Icon(AppIcons.menu),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      modalElevation: 0,
      modalBarrierColor: Colors.black.withValues(alpha: isDark ? .6 : .32),
      dragHandleColor: colorScheme.onSurfaceVariant.withValues(alpha: .4),
      dragHandleSize: const Size(36, 5),
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(
        fontFamily: font,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),
      backgroundColor: raised,
      actionTextColor: colorScheme.primary,
      elevation: 6,
      behavior: SnackBarBehavior.floating,
      insetPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14), side: hairline),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: colorScheme.onSurface,
        fontFamily: font,
        fontWeight: FontWeight.w600,
        fontSize: 17,
        letterSpacing: -.2,
      ),
      toolbarTextStyle: TextStyle(fontFamily: font, fontSize: 17, color: colorScheme.primary),
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
      actionsIconTheme: IconThemeData(color: colorScheme.onSurface, size: 22),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: buttonStyle),
    filledButtonTheme: FilledButtonThemeData(style: buttonStyle),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        textStyle: buttonText,
        minimumSize: const Size(44, 44),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        shape: const StadiumBorder(),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        textStyle: buttonText,
        minimumSize: const Size(64, 50),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        side: BorderSide(color: colorScheme.outline.withValues(alpha: .6), width: .75),
        shape: const StadiumBorder(),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        highlightColor: colorScheme.onSurface.withValues(alpha: .08),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: Colors.white,
      elevation: 2,
      focusElevation: 2,
      hoverElevation: 3,
      highlightElevation: 2,
      shape: const StadiumBorder(),
      extendedTextStyle: buttonText,
    ),
    cardTheme: CardThemeData(
      color: colorScheme.surfaceContainer,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      surfaceTintColor: Colors.transparent,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      selectedColor: colorScheme.primaryContainer,
      checkmarkColor: colorScheme.primary,
      side: BorderSide.none,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      labelStyle: TextStyle(fontFamily: font, fontSize: 14, fontWeight: FontWeight.w500, color: colorScheme.onSurface),
      secondaryLabelStyle: TextStyle(
        fontFamily: font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: colorScheme.onPrimaryContainer,
      ),
      iconTheme: IconThemeData(color: muted, size: 18),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.onSurface,
      unselectedLabelColor: muted,
      labelStyle: TextStyle(fontFamily: font, fontSize: 15, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontFamily: font, fontSize: 15, fontWeight: FontWeight.w500),
      indicatorColor: colorScheme.primary,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: colorScheme.outlineVariant,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
    // Apple-like switch: accent track + white thumb when on, neutral track +
    // white thumb when off. The empty thumbIcon keeps the thumb full size in
    // both states (Material shrinks an icon-less unselected thumb).
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.disabled)
            ? (isDark ? const Color(0xFF6B6863) : const Color(0xFFF6F4EF))
            : Colors.white,
      ),
      trackColor: WidgetStateProperty.resolveWith((states) {
        final on = states.contains(WidgetState.selected);
        final base = on ? colorScheme.primary : (isDark ? const Color(0xFF3A3835) : const Color(0xFFD6D1C8));
        return states.contains(WidgetState.disabled) ? base.withValues(alpha: .4) : base;
      }),
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      trackOutlineWidth: const WidgetStatePropertyAll(0),
      thumbIcon: const WidgetStatePropertyAll(Icon(null)),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected) ? colorScheme.primary : Colors.transparent,
      ),
      checkColor: const WidgetStatePropertyAll(Colors.white),
      side: WidgetStateBorderSide.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? BorderSide.none
            : BorderSide(color: colorScheme.outline, width: 1.5),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected) ? colorScheme.primary : colorScheme.outline,
      ),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
    sliderTheme: SliderThemeData(
      trackHeight: 4,
      activeTrackColor: colorScheme.primary,
      inactiveTrackColor: colorScheme.onSurface.withValues(alpha: .12),
      thumbColor: Colors.white,
      overlayColor: Colors.transparent,
      activeTickMarkColor: Colors.white.withValues(alpha: .6),
      inactiveTickMarkColor: colorScheme.onSurface.withValues(alpha: .25),
      thumbShape: const _ShadowedThumbShape(),
      valueIndicatorColor: raised,
      valueIndicatorTextStyle: TextStyle(
        fontFamily: font,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      showValueIndicator: ShowValueIndicator.onDrag,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: muted,
      selectedLabelStyle: TextStyle(fontFamily: font, fontSize: 11, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontFamily: font, fontSize: 11, fontWeight: FontWeight.w500),
      elevation: 0,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: raised,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black.withValues(alpha: isDark ? .5 : .18),
      elevation: 8,
      shape: menuShape,
      textStyle: menuText,
      labelTextStyle: WidgetStatePropertyAll(menuText),
      iconColor: muted,
      iconSize: 20,
      menuPadding: const EdgeInsets.symmetric(vertical: 6),
    ),
    menuTheme: MenuThemeData(style: menuStyle),
    menuButtonTheme: MenuButtonThemeData(style: menuItemStyle),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: menuStyle,
      textStyle: menuText,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHigh,
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: inputRadius),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      height: 72,
      indicatorColor: Colors.transparent,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          fontFamily: font,
          fontSize: 11,
          fontWeight: states.contains(WidgetState.selected) ? FontWeight.w600 : FontWeight.w500,
          color: states.contains(WidgetState.selected) ? colorScheme.primary : muted,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(size: 24, color: states.contains(WidgetState.selected) ? colorScheme.primary : muted),
      ),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.transparent,
      selectedTileColor: colorScheme.onSurface.withValues(alpha: .06),
      selectedColor: colorScheme.primary,
      iconColor: muted,
      textColor: colorScheme.onSurface,
      minVerticalPadding: 12,
      minLeadingWidth: 24,
      horizontalTitleGap: 14,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      titleTextStyle: TextStyle(
        fontFamily: font,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: -.1,
        color: colorScheme.onSurface,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: font,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 1.35,
        color: muted,
      ),
      leadingAndTrailingTextStyle: TextStyle(fontFamily: font, fontSize: 15, color: muted),
    ),
    expansionTileTheme: ExpansionTileThemeData(
      iconColor: muted,
      collapsedIconColor: muted,
      textColor: colorScheme.onSurface,
      collapsedTextColor: colorScheme.onSurface,
      shape: const Border(),
      collapsedShape: const Border(),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surfaceContainerHigh,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: inputRadius),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: inputRadius),
      disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: inputRadius),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        borderRadius: inputRadius,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error, width: 1),
        borderRadius: inputRadius,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error, width: 1.5),
        borderRadius: inputRadius,
      ),
      labelStyle: TextStyle(fontFamily: font, color: muted, fontSize: 15),
      floatingLabelStyle: TextStyle(fontFamily: font, color: muted, fontSize: 13, fontWeight: FontWeight.w500),
      hintStyle: TextStyle(
        fontFamily: font,
        color: muted.withValues(alpha: .8),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      helperStyle: TextStyle(fontFamily: font, color: muted, fontSize: 13),
      errorStyle: TextStyle(fontFamily: font, color: colorScheme.error, fontSize: 13),
      prefixIconColor: muted,
      suffixIconColor: muted,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.primary,
      selectionColor: colorScheme.primary.withValues(alpha: .28),
      selectionHandleColor: colorScheme.primary,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: raised,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: TextStyle(
        fontFamily: font,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: -.2,
        color: colorScheme.onSurface,
      ),
      contentTextStyle: TextStyle(fontFamily: font, fontSize: 15, height: 1.4, color: muted),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      barrierColor: Colors.black.withValues(alpha: isDark ? .6 : .32),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(color: colorScheme.inverseSurface, borderRadius: BorderRadius.circular(8)),
      textStyle: TextStyle(fontFamily: font, fontSize: 13, color: colorScheme.onInverseSurface),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(TextStyle(fontFamily: font, fontSize: 14, fontWeight: FontWeight.w500)),
        side: WidgetStatePropertyAll(BorderSide(color: colorScheme.outlineVariant)),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? colorScheme.surfaceContainerHighest : null,
        ),
        foregroundColor: WidgetStatePropertyAll(colorScheme.onSurface),
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colorScheme.primary,
      linearTrackColor: colorScheme.onSurface.withValues(alpha: .1),
      circularTrackColor: Colors.transparent,
      // ignore: deprecated_member_use
      year2023: false,
      trackGap: 3,
    ),
  );
}

/// A white round slider thumb with a soft shadow, like iOS.
class _ShadowedThumbShape extends SliderComponentShape {
  const _ShadowedThumbShape();

  static const double _radius = 11;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => const Size.fromRadius(_radius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    final path = Path()..addOval(Rect.fromCircle(center: center, radius: _radius));
    canvas.drawShadow(path, Colors.black.withValues(alpha: .5), 2, false);
    canvas.drawPath(path, Paint()..color = sliderTheme.thumbColor ?? Colors.white);
  }
}

// Neutral chrome keeps photographs and the selected accent distinct.
ImmichTheme decolorizeSurfaces({required ImmichTheme theme}) {
  return ImmichTheme(
    light: theme.light.copyWith(
      surface: const Color(0xFFECE9E3),
      onSurface: const Color(0xFF1D1C1A),
      surfaceContainerLowest: const Color(0xFFFBFAF7),
      surfaceContainerLow: const Color(0xFFF1EEE8),
      surfaceContainer: const Color(0xFFF7F5F1),
      surfaceContainerHigh: const Color(0xFFE5E1DA),
      surfaceContainerHighest: const Color(0xFFDCD7CE),
      surfaceDim: const Color(0xFFE5E1DA),
      surfaceBright: const Color(0xFFFBFAF7),
      onSurfaceVariant: const Color(0xFF625D55),
      outline: const Color(0xFFB9B2A7),
      outlineVariant: const Color(0xFFD3CEC5),
      inverseSurface: const Color(0xFF1D1C1A),
      onInverseSurface: const Color(0xFFF2F1EC),
    ),
    dark: theme.dark.copyWith(
      surface: const Color(0xFF0B0B0C),
      onSurface: const Color(0xFFF2F1EC),
      surfaceContainerLowest: const Color(0xFF0B0B0C),
      // Grouped sections sit on surfaceContainer; it needs a visible step
      // from the page, like iOS' grouped cells on black.
      surfaceContainerLow: const Color(0xFF121212),
      surfaceContainer: const Color(0xFF181817),
      surfaceContainerHigh: const Color(0xFF201F1E),
      surfaceContainerHighest: const Color(0xFF2A2826),
      surfaceDim: const Color(0xFF0F0F10),
      surfaceBright: const Color(0xFF2A2826),
      onSurfaceVariant: const Color(0xFFB3AEA6),
      outline: const Color(0xFF55514C),
      outlineVariant: const Color(0xFF2E2D2B),
      inverseSurface: const Color(0xFFF2F1EC),
      onInverseSurface: const Color(0xFF1D1C1A),
    ),
  );
}

String? _getFontFamilyFromLocale(Locale locale) {
  if (localesNotSupportedByAppFont.contains(locale)) {
    return null;
  }
  return 'Geist';
}

/// Keeps Cupertino's interactive back gesture and easing on both mobile platforms.
class _PhotosPageTransitionsBuilder extends CupertinoPageTransitionsBuilder {
  const _PhotosPageTransitionsBuilder();

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Duration get reverseTransitionDuration => const Duration(milliseconds: 300);
}
