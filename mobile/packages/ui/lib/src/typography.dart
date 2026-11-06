import 'package:flutter/material.dart';

/// Font roles outside the regular [TextTheme].
///
/// All UI text is Geist through the [TextTheme]. GeistMono is only for
/// technical values (EXIF numbers, file sizes, versions, URLs, counters) and
/// GeistPixel only for the wordmark. The app installs this extension in its
/// [ThemeData] with font families cleared for locales Geist cannot render.
///
/// ```dart
/// Text('ƒ/1.8 · 1/120s', style: context.monoStyle);
/// Text('v2.1.0', style: context.monoStyle.copyWith(fontSize: 12));
/// ```
@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({required this.mono, required this.pixel});

  /// Default styles with the bundled families.
  static const fallback = AppTextStyles(
    mono: TextStyle(
      fontFamily: 'GeistMono',
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    pixel: TextStyle(
      fontFamily: 'GeistPixel',
      fontSize: 26,
      fontWeight: FontWeight.w400,
    ),
  );

  /// Technical values: tabular GeistMono, 13 medium. No color, so it inherits.
  final TextStyle mono;

  /// Brand wordmark and rare hero moments only.
  final TextStyle pixel;

  @override
  AppTextStyles copyWith({TextStyle? mono, TextStyle? pixel}) =>
      AppTextStyles(mono: mono ?? this.mono, pixel: pixel ?? this.pixel);

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) {
    if (other == null) {
      return this;
    }
    return AppTextStyles(
      mono: TextStyle.lerp(mono, other.mono, t)!,
      pixel: TextStyle.lerp(pixel, other.pixel, t)!,
    );
  }
}

extension AppTextStylesContext on BuildContext {
  AppTextStyles get _appTextStyles =>
      Theme.of(this).extension<AppTextStyles>() ?? AppTextStyles.fallback;

  /// GeistMono for technical values only. See [AppTextStyles.mono].
  TextStyle get monoStyle => _appTextStyles.mono;

  /// GeistPixel for the wordmark only. See [AppTextStyles.pixel].
  TextStyle get pixelStyle => _appTextStyles.pixel;
}
