import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_mobile/constants/colors.dart';
import 'package:immich_mobile/constants/locales.dart';
import 'package:immich_mobile/domain/models/config/theme_config.dart';
import 'package:immich_mobile/domain/models/user.model.dart';
import 'package:immich_mobile/theme/color_scheme.dart';
import 'package:immich_mobile/theme/theme_data.dart';
import 'package:immich_mobile/widgets/forms/login/login_backdrop.dart';

void main() {
  final theme = ImmichColorPreset.indigo.themeOfPreset;

  test('default palette uses warm neutral chrome and the orange accent', () {
    expect(theme.dark.surface, const Color(0xFF0B0B0C));
    expect(theme.dark.surfaceContainer, const Color(0xFF181817));
    expect(theme.dark.onSurface, const Color(0xFFF2F1EC));
    expect(theme.dark.primary, const Color(0xFFEF5A00));
    expect(theme.light.surface, const Color(0xFFECE9E3));
    expect(theme.light.primary, const Color(0xFFD94F00));
    expect(AvatarColor.primary.toColor(isDarkTheme: true), const Color(0xFFD9681F));
    expect(AvatarColor.primary.toColor(), const Color(0xFFC85A16));
    expect(const ThemeConfig().dynamicTheme, isFalse);
    expect(const ThemeConfig().mode, ThemeMode.system);
  });

  test('Latin UI uses Geist with technical mono values, preserving script fallback', () {
    final latin = getThemeData(colorScheme: theme.dark, locale: const Locale('en'));
    expect(latin.textTheme.bodyMedium?.fontFamily, 'Geist');
    expect(latin.textTheme.labelMedium?.fontFamily, 'Geist');
    expect(latin.textTheme.headlineSmall?.fontFamily, 'Geist');
    final fallback = getThemeData(colorScheme: theme.dark, locale: localesNotSupportedByAppFont.first);
    expect(fallback.textTheme.bodyMedium?.fontFamily, isNot('Geist'));
    expect(fallback.textTheme.labelMedium?.fontFamily, isNot('GeistMono'));
    expect(fallback.textTheme.headlineSmall?.fontFamily, isNot('GeistPixel'));
  });

  test('neutral surfaces retain user-selected accents', () {
    final custom = ImmichColorPreset.green.themeOfPreset;
    final neutral = decolorizeSurfaces(theme: custom);
    expect(neutral.dark.primary, custom.dark.primary);
    expect(neutral.light.primary, custom.light.primary);
    expect(neutral.dark.surface, const Color(0xFF0B0B0C));
  });

  testWidgets('fluted backdrop paints both themes and leaves controls accessible', (tester) async {
    for (final scheme in [theme.dark, theme.light]) {
      var presses = 0;
      await tester.pumpWidget(
        MaterialApp(
          theme: getThemeData(colorScheme: scheme, locale: const Locale('en')),
          home: Scaffold(
            body: LoginBackdrop(
              child: Center(
                child: ElevatedButton(onPressed: () => presses++, child: const Text('Continue')),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Continue'));
      await tester.pump();
      expect(presses, 1);
      expect(tester.takeException(), isNull);
    }
  });
}
