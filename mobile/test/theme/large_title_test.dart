import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:immich_ui/immich_ui.dart';

void main() {
  testWidgets('large title collapses while toolbar actions stay accessible', (tester) async {
    var presses = 0;
    for (final brightness in Brightness.values) {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(brightness: brightness),
          home: Scaffold(
            body: CustomScrollView(
              slivers: [
                LargeTitleSliverAppBar(
                  title: 'Photos',
                  actions: [
                    IconButton(tooltip: 'Profile', onPressed: () => presses++, icon: const Icon(AppIcons.user)),
                  ],
                ),
                SliverList.builder(
                  itemCount: 50,
                  itemBuilder: (_, index) => SizedBox(height: 60, child: Text('Photo $index')),
                ),
              ],
            ),
          ),
        ),
      );
      await tester.tap(find.byTooltip('Profile'));
      await tester.drag(find.byType(CustomScrollView), const Offset(0, -400));
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip('Profile'));
      expect(tester.takeException(), isNull);
    }
    expect(presses, 4);
  });
}
