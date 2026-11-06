import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_mobile/theme/theme_data.dart';

void main() {
  for (final platform in [TargetPlatform.android, TargetPlatform.iOS]) {
    testWidgets('$platform pushes in 300 ms and supports cancelling and completing back swipes', (tester) async {
      final navigator = GlobalKey<NavigatorState>();
      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigator,
          theme: getThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            locale: const Locale('en'),
          ).copyWith(platform: platform),
          home: const Scaffold(body: Text('Photos')),
        ),
      );
      final route = MaterialPageRoute<void>(builder: (_) => const Scaffold(body: Text('Album')));
      navigator.currentState!.push(route);
      await tester.pump();
      expect(route.transitionDuration, const Duration(milliseconds: 300));
      expect(route.reverseTransitionDuration, const Duration(milliseconds: 300));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 301));
      expect(route.animation!.isCompleted, isTrue);

      final gesture = await tester.startGesture(const Offset(5, 300));
      await gesture.moveBy(const Offset(100, 0));
      await tester.pump();
      expect(navigator.currentState!.userGestureInProgress, isTrue);
      await gesture.cancel();
      await tester.pumpAndSettle();
      expect(route.isCurrent, isTrue);

      await tester.dragFrom(const Offset(5, 300), const Offset(700, 0));
      await tester.pumpAndSettle();
      expect(find.text('Album'), findsNothing);
      expect(find.text('Photos'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
