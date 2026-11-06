import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/presentation/widgets/timeline/timeline.state.dart';
import 'package:immich_ui/immich_ui.dart';

class BaseBottomSheet extends ConsumerStatefulWidget {
  final List<Widget> actions;
  final DraggableScrollableController? controller;
  final List<Widget>? slivers;
  final Widget? footer;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  final bool expand;
  final bool shouldCloseOnMinExtent;
  final bool resizeOnScroll;
  final Color? backgroundColor;

  const BaseBottomSheet({
    super.key,
    required this.actions,
    this.slivers,
    this.footer,
    this.controller,
    this.initialChildSize = 0.35,
    double? minChildSize,
    this.maxChildSize = 0.65,
    this.expand = true,
    this.shouldCloseOnMinExtent = true,
    this.resizeOnScroll = true,
    this.backgroundColor,
  }) : minChildSize = minChildSize ?? 0.15;

  @override
  ConsumerState<BaseBottomSheet> createState() => _BaseDraggableScrollableSheetState();
}

class _BaseDraggableScrollableSheetState extends ConsumerState<BaseBottomSheet> {
  late DraggableScrollableController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? DraggableScrollableController();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(timelineStateProvider, (previous, next) {
      if (!widget.resizeOnScroll) {
        return;
      }

      if (previous?.isInteracting != true && next.isInteracting) {
        unawaited(
          _controller.animateTo(
            widget.minChildSize,
            duration: AppMotion.of(context, AppMotion.base),
            curve: AppMotion.emphasized,
          ),
        );
      }
    });

    return DraggableScrollableSheet(
      controller: _controller,
      initialChildSize: widget.initialChildSize,
      minChildSize: widget.minChildSize,
      maxChildSize: widget.maxChildSize,
      // Snap between min / initial / max so a released drag always settles
      // on a deliberate detent instead of stopping wherever the finger let go.
      snap: true,
      snapSizes: widget.initialChildSize > widget.minChildSize && widget.initialChildSize < widget.maxChildSize
          ? [widget.initialChildSize]
          : null,
      snapAnimationDuration: AppMotion.of(context, AppMotion.base),
      expand: widget.expand,
      shouldCloseOnMinExtent: widget.shouldCloseOnMinExtent,
      builder: (BuildContext context, ScrollController scrollController) {
        return Card(
          color: widget.backgroundColor ?? context.colorScheme.surfaceContainer,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(ImmichRadius.xl)),
            side: BorderSide(color: context.colorScheme.outlineVariant, width: .5),
          ),
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    const SliverToBoxAdapter(child: _DragHandle()),
                    if (widget.actions.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: widget.actions),
                            ),
                            const Divider(indent: 16, endIndent: 16),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    if (widget.slivers != null) ...widget.slivers!,
                    SliverToBoxAdapter(child: SizedBox(height: MediaQuery.paddingOf(context).bottom + 16)),
                  ],
                ),
              ),
              if (widget.footer != null) widget.footer!,
            ],
          ),
        );
      },
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Center(
        child: SizedBox(
          width: 36,
          height: 5,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(2.5)),
              color: context.colorScheme.onSurfaceVariant.withValues(alpha: .4),
            ),
          ),
        ),
      ),
    );
  }
}
