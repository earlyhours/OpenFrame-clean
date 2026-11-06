import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/domain/models/timeline.model.dart';
import 'package:immich_mobile/presentation/widgets/timeline/fixed/segment_builder.dart';
import 'package:immich_mobile/presentation/widgets/timeline/scrubber.widget.dart';
import 'package:immich_mobile/presentation/widgets/timeline/segment.model.dart';
import 'package:immich_mobile/presentation/widgets/timeline/timeline.state.dart';

void main() {
  final segments = FixedSegmentBuilder(
    buckets: List.generate(1000, (i) => TimeBucket(date: DateTime(2025, 1, 1 - i), assetCount: 7)),
    tileHeight: 100,
    columnCount: 3,
  ).generate();

  test('binary segment lookup preserves boundaries and out-of-range behavior', () {
    for (final segment in segments) {
      for (final index in [segment.firstIndex - 1, segment.firstIndex, segment.lastIndex, segment.lastIndex + 1]) {
        expect(segments.findByIndex(index), same(segments.firstWhereOrNull((s) => s.containsIndex(index))));
      }
      for (final offset in [
        segment.startOffset - 0.1,
        segment.startOffset,
        segment.endOffset,
        segment.endOffset + 0.1,
      ]) {
        expect(
          segments.findByOffset(offset),
          same(segments.firstWhereOrNull((s) => s.isWithinOffset(offset)) ?? segments.last),
        );
      }
    }
    expect(<Segment>[].findByIndex(0), isNull);
    expect(<Segment>[].findByOffset(0), isNull);
  });

  test('scroll state only notifies when a flag changes', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    var changes = 0;
    container.listen(timelineStateProvider, (_, _) => changes++);
    final notifier = container.read(timelineStateProvider.notifier);
    for (var i = 0; i < 120; i++) {
      notifier.setScrolling(true);
      notifier.setRecommendDeferredLoading(true);
    }
    expect(changes, 2);
    notifier.setScrolling(false);
    notifier.setRecommendDeferredLoading(false);
    expect(changes, 4);
  });

  testWidgets('scrubber tracks scrolling and settles without rebuilding content', (tester) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    final container = ProviderContainer();
    addTearDown(container.dispose);
    var builds = 0;
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: MaterialApp(
          home: PrimaryScrollController(
            controller: controller,
            child: Scrubber(
              layoutSegments: segments,
              timelineHeight: 600,
              child: CustomScrollView(
                primary: true,
                slivers: [
                  SliverToBoxAdapter(
                    child: Builder(
                      builder: (_) {
                        builds++;
                        return const SizedBox(height: 10000);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    final initialBuilds = builds;
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -500));
    await tester.pumpAndSettle();
    expect(controller.offset, greaterThan(0));
    expect(container.read(timelineStateProvider).isScrolling, isFalse);
    expect(builds, initialBuilds);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
}
