import 'package:flutter/material.dart';

import 'package:immich_mobile/constants/locales.dart';
import 'package:immich_mobile/extensions/theme_extensions.dart';

class ImmichTheme {
  final ColorScheme light;
  final ColorScheme dark;

  const ImmichTheme({required this.light, required this.dark});
}

ThemeData getThemeData({required ColorScheme colorScheme, required Locale locale}) {
  final font = _getFontFamilyFromLocale(locale);
  final mono = font == null ? null : 'GeistMono';
  final border = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: BorderSide(color: colorScheme.outlineVariant),
  );
  final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    minimumSize: const Size(48, 52),
    elevation: 3,
    shadowColor: colorScheme.primary.withValues(alpha: .35),
    shape: const StadiumBorder(),
    textStyle: TextStyle(fontFamily: mono, fontSize: 13, fontWeight: FontWeight.w600, letterSpacing: 1),
  );

  return ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    hintColor: colorScheme.onSurfaceSecondary,
    focusColor: colorScheme.primary.withValues(alpha: .2),
    scaffoldBackgroundColor: colorScheme.surface,
    splashColor: colorScheme.primary.withValues(alpha: .1),
    highlightColor: colorScheme.primary.withValues(alpha: .1),
    dividerColor: colorScheme.outlineVariant,
    dividerTheme: DividerThemeData(color: colorScheme.outlineVariant, thickness: 1, space: 1),
    fontFamily: font,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(fontFamily: font, color: colorScheme.onSurface),
      backgroundColor: colorScheme.surfaceContainerHighest,
      elevation: 0,
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: colorScheme.onSurface,
        fontFamily: font,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      displayMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      displaySmall: TextStyle(fontFamily: mono, fontSize: 12, fontWeight: FontWeight.w500),
      headlineSmall: TextStyle(
        fontFamily: font == null ? null : 'GeistPixel',
        fontSize: 26,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      titleMedium: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      titleLarge: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500, letterSpacing: -.5),
      labelLarge: TextStyle(fontFamily: mono, fontSize: 13, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(fontFamily: mono, fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: .3),
      labelSmall: TextStyle(fontFamily: mono, fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: .7),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: buttonStyle),
    filledButtonTheme: FilledButtonThemeData(style: buttonStyle),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        side: BorderSide(color: colorScheme.outline),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    cardTheme: CardThemeData(
      color: colorScheme.surfaceContainer,
      elevation: 0,
      shape: border,
      surfaceTintColor: Colors.transparent,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      selectedColor: colorScheme.primaryContainer,
      side: BorderSide(color: colorScheme.outlineVariant),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      labelStyle: TextStyle(fontFamily: mono, fontSize: 12, color: colorScheme.onSurfaceVariant),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.onSurface,
      unselectedLabelColor: colorScheme.onSurfaceVariant,
      labelStyle: TextStyle(fontFamily: mono, fontSize: 12, fontWeight: FontWeight.w500),
      indicatorColor: colorScheme.primary,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: colorScheme.outlineVariant,
    ),
    sliderTheme: const SliderThemeData(
      trackHeight: 12,
      // ignore: deprecated_member_use
      year2023: false,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurfaceVariant,
      elevation: 0,
    ),
    popupMenuTheme: PopupMenuThemeData(color: colorScheme.surfaceContainer, elevation: 0, shape: border),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      height: 72,
      indicatorColor: colorScheme.primaryContainer,
      indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          fontFamily: mono,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: states.contains(WidgetState.selected) ? colorScheme.primary : colorScheme.onSurfaceVariant,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(
          size: 22,
          color: states.contains(WidgetState.selected) ? colorScheme.primary : colorScheme.onSurfaceVariant,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surfaceContainer,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(fontFamily: mono, color: colorScheme.onSurfaceVariant, fontSize: 12),
      hintStyle: TextStyle(color: colorScheme.onSurfaceVariant, fontSize: 14, fontWeight: FontWeight.normal),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.primary,
      selectionColor: colorScheme.primaryContainer,
      selectionHandleColor: colorScheme.primary,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(menuStyle: MenuStyle(shape: WidgetStatePropertyAll(border))),
    dialogTheme: DialogThemeData(backgroundColor: colorScheme.surfaceContainer, elevation: 0, shape: border),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      // ignore: deprecated_member_use
      year2023: false,
      trackGap: 3,
    ),
  );
}

// Neutral chrome keeps photographs and the selected accent distinct.
ImmichTheme decolorizeSurfaces({required ImmichTheme theme}) {
  return ImmichTheme(
    light: theme.light.copyWith(
      surface: const Color(0xFFECE9E3),
      onSurface: const Color(0xFF1D1C1A),
      surfaceContainerLowest: const Color(0xFFF6F4EF),
      surfaceContainerLow: const Color(0xFFF1EEE8),
      surfaceContainer: const Color(0xFFF6F4EF),
      surfaceContainerHigh: const Color(0xFFE5E1DA),
      surfaceContainerHighest: const Color(0xFFDCD7CE),
      surfaceDim: const Color(0xFFE5E1DA),
      surfaceBright: const Color(0xFFF6F4EF),
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
      surfaceContainerLow: const Color(0xFF111112),
      surfaceContainer: const Color(0xFF131314),
      surfaceContainerHigh: const Color(0xFF1B1A19),
      surfaceContainerHighest: const Color(0xFF262421),
      surfaceDim: const Color(0xFF0F0F10),
      surfaceBright: const Color(0xFF262421),
      onSurfaceVariant: const Color(0xFFB3AEA6),
      outline: const Color(0xFF55514C),
      outlineVariant: const Color(0xFF262625),
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
