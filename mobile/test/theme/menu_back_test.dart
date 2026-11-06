import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_ui/immich_ui.dart';

void main() {
  testWidgets('back dismisses an open menu before leaving the page', (tester) async {
    final navigator = GlobalKey<NavigatorState>();
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: navigator,
        home: const Scaffold(body: Text('Home')),
      ),
    );
    navigator.currentState!.push(
      MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          body: ImmichMenu(
            children: [MenuItemButton(onPressed: () {}, child: const Text('Details'))],
            builder: (_, controller, _) => TextButton(onPressed: controller.open, child: const Text('Open menu')),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Open menu'));
    await tester.pumpAndSettle();
    await navigator.currentState!.maybePop();
    await tester.pumpAndSettle();
    expect(find.text('Details'), findsNothing);
    expect(find.text('Open menu'), findsOneWidget);
    await navigator.currentState!.maybePop();
    await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);
  });
}
