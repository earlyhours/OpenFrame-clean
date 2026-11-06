import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/constants/constants.dart';
import 'package:immich_mobile/domain/models/events.model.dart';
import 'package:immich_mobile/domain/utils/event_stream.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/providers/haptic_feedback.provider.dart';
import 'package:immich_mobile/providers/infrastructure/readonly_mode.provider.dart';
import 'package:immich_mobile/providers/search/search_input_focus.provider.dart';
import 'package:immich_mobile/providers/tab.provider.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_ui/immich_ui.dart';

@RoutePage()
class TabShellPage extends ConsumerStatefulWidget {
  const TabShellPage({super.key});

  @override
  ConsumerState<TabShellPage> createState() => _TabShellPageState();
}

class _TabShellPageState extends ConsumerState<TabShellPage> {
  @override
  Widget build(BuildContext context) {
    final isScreenLandscape = context.orientation == Orientation.landscape;
    final isReadonlyModeEnabled = ref.watch(readonlyModeProvider);

    final navigationDestinations = [
      NavigationDestination(
        label: context.t.photos,
        icon: const Icon(AppIcons.images),
        selectedIcon: Icon(AppIcons.images, color: context.primaryColor),
      ),
      NavigationDestination(
        label: context.t.search,
        icon: const Icon(AppIcons.search),
        selectedIcon: Icon(AppIcons.search, color: context.primaryColor),
        enabled: !isReadonlyModeEnabled,
      ),
      NavigationDestination(
        label: context.t.albums,
        icon: const Icon(AppIcons.libraryBig),
        selectedIcon: Icon(AppIcons.libraryBig, color: context.primaryColor),
        enabled: !isReadonlyModeEnabled,
      ),
      NavigationDestination(
        label: context.t.library$,
        icon: const Icon(AppIcons.layoutDashboard),
        selectedIcon: Icon(AppIcons.layoutDashboard, color: context.primaryColor),
        enabled: !isReadonlyModeEnabled,
      ),
    ];

    Widget navigationRail(TabsRouter tabsRouter) {
      return NavigationRail(
        destinations: navigationDestinations
            .map(
              (e) => NavigationRailDestination(
                icon: e.icon,
                label: Text(e.label),
                selectedIcon: _SelectedNavIcon(child: e.selectedIcon ?? e.icon),
                disabled: !e.enabled,
              ),
            )
            .toList(),
        onDestinationSelected: (index) => _onNavigationSelected(tabsRouter, index, ref),
        selectedIndex: tabsRouter.activeIndex,
        labelType: NavigationRailLabelType.all,
        groupAlignment: 0.0,
      );
    }

    return AutoTabsRouter(
      routes: const [MainTimelineRoute(), SearchRoute(), AlbumsRoute(), LibraryRoute()],
      // IndexedStack retains each visited tab; switching needs no opacity layer.
      duration: Duration.zero,
      transitionBuilder: (context, child, animation) => child,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return PopScope(
          canPop: tabsRouter.activeIndex == 0,
          onPopInvokedWithResult: (didPop, _) => !didPop ? tabsRouter.setActiveIndex(0) : null,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: true,
            body: isScreenLandscape
                ? Row(
                    children: [
                      navigationRail(tabsRouter),
                      const VerticalDivider(),
                      Expanded(child: child),
                    ],
                  )
                : child,
            bottomNavigationBar: _BottomNavigationBar(tabsRouter: tabsRouter, destinations: navigationDestinations),
          ),
        );
      },
    );
  }
}

void _onNavigationSelected(TabsRouter router, int index, WidgetRef ref) {
  // On Photos page menu tapped
  if (router.activeIndex == kPhotoTabIndex && index == kPhotoTabIndex) {
    EventStream.shared.emit(const ScrollToTopEvent());
  }

  // On Search page tapped
  if (router.activeIndex == kSearchTabIndex && index == kSearchTabIndex) {
    ref.read(searchInputFocusProvider).requestFocus();
  }

  ref.read(hapticFeedbackProvider.notifier).selectionClick();
  router.setActiveIndex(index);
  ref.read(tabProvider.notifier).state = TabEnum.values[index];
}

class _BottomNavigationBar extends ConsumerStatefulWidget {
  const _BottomNavigationBar({required this.tabsRouter, required this.destinations});

  final List<Widget> destinations;
  final TabsRouter tabsRouter;

  @override
  ConsumerState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends ConsumerState<_BottomNavigationBar> {
  bool hideNavigationBar = false;
  StreamSubscription? _eventSubscription;

  @override
  void initState() {
    super.initState();
    _eventSubscription = EventStream.shared.listen<MultiSelectToggleEvent>(_onEvent);
  }

  void _onEvent(MultiSelectToggleEvent event) {
    setState(() {
      hideNavigationBar = event.isEnabled;
    });
  }

  @override
  void dispose() {
    unawaited(_eventSubscription?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isScreenLandscape = context.orientation == Orientation.landscape;

    if (isScreenLandscape) {
      return const SizedBox.shrink();
    }

    final destinations = widget.destinations.map((destination) {
      if (destination is! NavigationDestination) {
        return destination;
      }
      return NavigationDestination(
        key: destination.key,
        icon: destination.icon,
        selectedIcon: _SelectedNavIcon(child: destination.selectedIcon ?? destination.icon),
        label: destination.label,
        tooltip: destination.tooltip,
        enabled: destination.enabled,
      );
    }).toList();

    // Slide the bar out of the way (instead of popping it) while the
    // multi-select sheet slides in over the same area.
    return TweenAnimationBuilder<double>(
      tween: Tween(end: hideNavigationBar ? 0 : 1),
      duration: AppMotion.of(context, AppMotion.base),
      curve: AppMotion.emphasized,
      // Docked and edge to edge like Apple Photos: the blur runs under the
      // home indicator, with a hairline separating it from the content.
      child: FrostedBar(
        edge: FrostedEdge.top,
        child: SafeArea(
          top: false,
          child: NavigationBar(
            backgroundColor: Colors.transparent,
            height: 56,
            labelPadding: EdgeInsets.zero,
            animationDuration: AppMotion.of(context, AppMotion.slow),
            selectedIndex: widget.tabsRouter.activeIndex,
            onDestinationSelected: (index) => _onNavigationSelected(widget.tabsRouter, index, ref),
            destinations: destinations,
          ),
        ),
      ),
      builder: (context, visibility, child) {
        if (visibility <= 0) {
          return const SizedBox.shrink();
        }
        return ClipRect(
          child: Align(alignment: Alignment.topCenter, heightFactor: visibility, child: child),
        );
      },
    );
  }
}

/// Selected tab icon: settles in with a small spring "pop" each time its tab
/// becomes active. The swap from the unselected icon remounts this widget, so
/// the animation runs once per selection and never on unrelated rebuilds.
class _SelectedNavIcon extends StatelessWidget {
  const _SelectedNavIcon({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (AppMotion.reduced(context)) {
      return child;
    }
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.86, end: 1),
      duration: AppMotion.slow,
      curve: AppMotion.spring,
      child: child,
      builder: (context, scale, child) => Transform.scale(scale: scale, child: child),
    );
  }
}
