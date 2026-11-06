import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:immich_ui/src/components/frosted_bar.dart';
import 'package:immich_ui/src/icons.dart';

/// iOS-style large title that collapses into a pinned frosted bar.
///
/// Put it first in a [CustomScrollView]. At rest it shows a 32/bold title
/// under a toolbar row (leading + actions). Scrolling moves the large title up
/// with the content and clips it under the toolbar; as it passes, a 17/semibold
/// title fades into the toolbar, and once content scrolls beneath, the bar
/// turns frosted with a bottom hairline. Everything is driven by the scroll
/// offset, so there are no jumps.
///
/// ```dart
/// CustomScrollView(
///   slivers: [
///     LargeTitleSliverAppBar(
///       title: 'Albums',
///       actions: [IconButton(icon: const Icon(AppIcons.plus), onPressed: create)],
///       bottom: const PreferredSize(preferredSize: Size.fromHeight(52), child: SearchField()),
///     ),
///     SliverList(...),
///   ],
/// )
/// ```
///
/// The [bottom] widget stays pinned under the toolbar (search field,
/// [Segmented] control). Inside a [NestedScrollView] header, wrap it in a
/// [SliverOverlapAbsorber] like any pinned app bar.
class LargeTitleSliverAppBar extends StatelessWidget {
  const LargeTitleSliverAppBar({
    super.key,
    required this.title,
    this.largeTitle,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.actions = const [],
    this.bottom,
    this.centerCollapsedTitle = true,
    this.backgroundColor,
    this.toolbarHeight = 52,
    this.largeTitleHeight = 52,
  });

  /// Shown large when expanded and small in the collapsed toolbar.
  final String title;

  /// Replaces the large title text (e.g. a title with an avatar). The
  /// collapsed toolbar still shows [title].
  final Widget? largeTitle;

  /// Leading toolbar widget. When null and [automaticallyImplyLeading] is
  /// true, a back chevron is shown if the route can pop.
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final List<Widget> actions;

  /// Pinned below the toolbar.
  final PreferredSizeWidget? bottom;

  /// Center the collapsed 17pt title (iOS) or align it after the leading
  /// widget.
  final bool centerCollapsedTitle;

  /// Bar tint. Defaults to [ColorScheme.surface].
  final Color? backgroundColor;
  final double toolbarHeight;
  final double largeTitleHeight;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;
    Widget? leadingWidget = leading;
    if (leadingWidget == null &&
        automaticallyImplyLeading &&
        (ModalRoute.of(context)?.canPop ?? false)) {
      leadingWidget = IconButton(
        icon: const Icon(AppIcons.chevronLeftDir, size: 26),
        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        onPressed: () => Navigator.maybePop(context),
      );
    }
    final scale = MediaQuery.textScalerOf(context)
        .clamp(maxScaleFactor: 1.4)
        .scale(1);
    return SliverPersistentHeader(
      pinned: true,
      delegate: _LargeTitleDelegate(
        title: title,
        largeTitle: largeTitle,
        leading: leadingWidget,
        actions: actions,
        bottom: bottom,
        centerCollapsedTitle: centerCollapsedTitle,
        backgroundColor: backgroundColor,
        topPadding: topPadding,
        toolbarHeight: toolbarHeight,
        largeTitleHeight: largeTitleHeight * scale,
        theme: Theme.of(context),
      ),
    );
  }
}

class _LargeTitleDelegate extends SliverPersistentHeaderDelegate {
  _LargeTitleDelegate({
    required this.title,
    required this.largeTitle,
    required this.leading,
    required this.actions,
    required this.bottom,
    required this.centerCollapsedTitle,
    required this.backgroundColor,
    required this.topPadding,
    required this.toolbarHeight,
    required this.largeTitleHeight,
    required this.theme,
  });

  final String title;
  final Widget? largeTitle;
  final Widget? leading;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;
  final bool centerCollapsedTitle;
  final Color? backgroundColor;
  final double topPadding;
  final double toolbarHeight;
  final double largeTitleHeight;
  final ThemeData theme;

  double get _bottomHeight => bottom?.preferredSize.height ?? 0;

  @override
  double get minExtent => topPadding + toolbarHeight + _bottomHeight;

  @override
  double get maxExtent => minExtent + largeTitleHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final range = largeTitleHeight;
    final shrink = shrinkOffset.clamp(0.0, range);
    // 0 = fully expanded, 1 = large title fully under the toolbar.
    final progress = range == 0 ? 1.0 : shrink / range;
    final collapsed = shrinkOffset >= range - .5;
    final smallTitleOpacity = const Interval(
      .7,
      1,
      curve: Curves.easeOut,
    ).transform(progress);
    final largeTitleOpacity =
        1 - const Interval(.55, 1, curve: Curves.easeIn).transform(progress);
    final scheme = theme.colorScheme;

    final smallTitle = Opacity(
      opacity: smallTitleOpacity,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.titleMedium?.copyWith(color: scheme.onSurface),
      ),
    );

    final toolbar = SizedBox(
      height: toolbarHeight,
      child: NavigationToolbar(
        leading: leading,
        middle: smallTitle,
        trailing: actions.isEmpty
            ? null
            : Row(mainAxisSize: MainAxisSize.min, children: actions),
        centerMiddle: centerCollapsedTitle,
        middleSpacing: 12,
      ),
    );

    final largeTitleArea = SizedBox(
      height: range - shrink,
      child: ClipRect(
        child: OverflowBox(
          alignment: Alignment.bottomLeft,
          minHeight: range,
          maxHeight: range,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 6),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                opacity: largeTitleOpacity,
                child:
                    largeTitle ??
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineLarge?.copyWith(
                        color: scheme.onSurface,
                      ),
                    ),
              ),
            ),
          ),
        ),
      ),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: scheme.brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: FrostedBar(
        enabled: collapsed,
        color: backgroundColor,
        edge: FrostedEdge.bottom,
        hairlineOpacity: collapsed
            ? math.min(1, (shrinkOffset - range + 1) / 12)
            : 0,
        child: Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconTheme.merge(
                data: IconThemeData(color: scheme.onSurface),
                child: toolbar,
              ),
              largeTitleArea,
              if (bottom != null)
                SizedBox(height: _bottomHeight, child: bottom),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _LargeTitleDelegate oldDelegate) =>
      title != oldDelegate.title ||
      largeTitle != oldDelegate.largeTitle ||
      leading != oldDelegate.leading ||
      actions != oldDelegate.actions ||
      bottom != oldDelegate.bottom ||
      centerCollapsedTitle != oldDelegate.centerCollapsedTitle ||
      backgroundColor != oldDelegate.backgroundColor ||
      topPadding != oldDelegate.topPadding ||
      toolbarHeight != oldDelegate.toolbarHeight ||
      largeTitleHeight != oldDelegate.largeTitleHeight ||
      theme != oldDelegate.theme;
}
