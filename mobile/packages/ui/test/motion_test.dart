import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_ui/immich_ui.dart';

void main() {
  group('SpringCurve', () {
    test('starts at 0, ends at 1 and overshoots only slightly', () {
      const curve = AppMotion.spring;
      expect(curve.transform(0), 0);
      expect(curve.transform(1), 1);
      var peak = 0.0;
      for (var i = 0; i <= 1000; i++) {
        final v = curve.transform(i / 1000);
        if (v > peak) {
          peak = v;
        }
      }
      expect(peak, greaterThan(1.0));
      expect(peak, lessThan(1.03));
      // The tail has settled to within 0.5% so the final snap to 1 is invisible.
      expect((curve.transform(0.98) - 1).abs(), lessThan(0.005));
    });
  });

  group('Pressable', () {
    Future<void> pump(WidgetTester tester, Widget child, {bool disableAnimations = false}) {
      return tester.pumpWidget(
        MaterialApp(
          builder: (context, app) => MediaQuery(
            data: MediaQuery.of(context).copyWith(disableAnimations: disableAnimations),
            child: app!,
          ),
          home: Scaffold(body: Center(child: child)),
        ),
      );
    }

    double scaleOf(WidgetTester tester) {
      final transforms = tester.widgetList<Transform>(
        find.descendant(of: find.byType(Pressable), matching: find.byType(Transform)),
      );
      return transforms.isEmpty ? 1 : transforms.first.transform.entry(0, 0);
    }

    testWidgets('scales down while pressed, springs back and taps', (tester) async {
      var taps = 0;
      await pump(tester, Pressable(onTap: () => taps++, child: const SizedBox(width: 100, height: 40)));

      final gesture = await tester.startGesture(tester.getCenter(find.byType(Pressable)));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      expect(scaleOf(tester), closeTo(AppMotion.pressScale, 0.001));

      await gesture.up();
      await tester.pumpAndSettle();
      expect(scaleOf(tester), 1);
      expect(taps, 1);
    });

    testWidgets('releases when the finger starts scrolling', (tester) async {
      await pump(tester, Pressable(onTap: () {}, child: const SizedBox(width: 100, height: 40)));

      final gesture = await tester.startGesture(tester.getCenter(find.byType(Pressable)));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      expect(scaleOf(tester), lessThan(1));
      await gesture.moveBy(const Offset(0, 40));
      await tester.pumpAndSettle();
      expect(scaleOf(tester), 1);
      await gesture.up();
    });

    testWidgets('does not animate when animations are disabled', (tester) async {
      await pump(
        tester,
        Pressable(onTap: () {}, child: const SizedBox(width: 100, height: 40)),
        disableAnimations: true,
      );

      final gesture = await tester.startGesture(tester.getCenter(find.byType(Pressable)));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      expect(scaleOf(tester), 1);
      await gesture.up();
    });

    testWidgets('observes without stealing taps from a wrapped button', (tester) async {
      var taps = 0;
      await pump(
        tester,
        Pressable(
          child: TextButton(onPressed: () => taps++, child: const Text('Go')),
        ),
      );
      // Hold long enough for the press animation to run: the wrapped button
      // must keep its state (and its pending tap) throughout.
      final gesture = await tester.startGesture(tester.getCenter(find.text('Go')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      await gesture.up();
      await tester.pumpAndSettle();
      expect(taps, 1);
    });
  });

  testWidgets('FadeSlideIn runs once and ends fully visible', (tester) async {
    var builds = 0;
    Widget build() => MaterialApp(
      home: FadeSlideIn(
        child: Builder(
          builder: (context) {
            builds++;
            return const Text('Hello');
          },
        ),
      ),
    );
    double opacity() => tester
        .widget<FadeTransition>(find.descendant(of: find.byType(FadeSlideIn), matching: find.byType(FadeTransition)))
        .opacity
        .value;

    await tester.pumpWidget(build());
    expect(opacity(), 0);
    await tester.pumpAndSettle();
    expect(opacity(), 1);

    await tester.pumpWidget(build());
    await tester.pump();
    // A rebuild must not restart the entrance.
    expect(opacity(), 1);
    expect(builds, greaterThan(0));
  });
}
