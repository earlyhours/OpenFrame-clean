import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';

/// Motion tokens shared by the whole app.
///
/// The language is calm and precise: quick emphasized ease-outs for most
/// movement, and a lightly damped spring (about 1.5% overshoot) for elements
/// that are released by a finger, so they settle with a hint of weight
/// without wobbling.
abstract final class AppMotion {
  /// Micro interactions: press feedback, icon swaps, small fades. 150ms.
  static const Duration fast = Duration(milliseconds: 150);

  /// Default for component-level changes: switchers, indicators, sheets. 250ms.
  static const Duration base = Duration(milliseconds: 250);

  /// Larger surfaces, page swipes and spring settles. 350ms.
  static const Duration slow = Duration(milliseconds: 350);

  /// Emphasized ease-out: fast start, long gentle landing. Default curve.
  static const Curve emphasized = Cubic(0.2, 0, 0, 1);

  /// Emphasized accelerate, for elements leaving the screen.
  static const Curve exit = Cubic(0.3, 0, 0.8, 0.15);

  /// Symmetric ease for cross-fades and on-screen moves between two states.
  static const Curve standard = Cubic(0.4, 0, 0.2, 1);

  /// Damping ratio of [spring]. Slightly underdamped: one barely visible
  /// overshoot, then rest.
  static const double springDampingRatio = 0.8;

  /// A curve sampled from a critically-near spring. Pair it with [slow] (or
  /// [base] for small elements). Overshoots 1.0 by ~1.5%, so never use it
  /// to drive opacity directly or anything that must stay within bounds.
  static const Curve spring = SpringCurve(dampingRatio: springDampingRatio);

  /// Spring physics for [AnimationController.animateWith] (e.g. drag release).
  static final SpringDescription springDescription =
      SpringDescription.withDampingRatio(
        mass: 1,
        stiffness: 420,
        ratio: springDampingRatio,
      );

  /// Scale applied to [Pressable] children while pressed.
  static const double pressScale = 0.97;

  /// Animation style for modal bottom sheets.
  static const AnimationStyle sheet = AnimationStyle(
    duration: Duration(milliseconds: 340),
    reverseDuration: Duration(milliseconds: 220),
    curve: emphasized,
    reverseCurve: exit,
  );

  /// Animation style for dialogs.
  static const AnimationStyle dialog = AnimationStyle(
    duration: Duration(milliseconds: 220),
    reverseDuration: Duration(milliseconds: 150),
    curve: emphasized,
    reverseCurve: Curves.easeInCubic,
  );

  /// Animation style for snackbars: rise in on the emphasized curve, leave
  /// quickly.
  static const AnimationStyle snackbar = AnimationStyle(
    duration: base,
    reverseDuration: fast,
    curve: emphasized,
    reverseCurve: Curves.easeInCubic,
  );

  /// Whether the platform asked to reduce motion.
  static bool reduced(BuildContext context) =>
      MediaQuery.maybeDisableAnimationsOf(context) ?? false;

  /// [duration], or [Duration.zero] when motion is reduced.
  static Duration of(BuildContext context, Duration duration) =>
      reduced(context) ? Duration.zero : duration;

  /// [style], or [AnimationStyle.noAnimation] when motion is reduced.
  static AnimationStyle styleOf(BuildContext context, AnimationStyle style) =>
      reduced(context) ? AnimationStyle.noAnimation : style;
}

/// [showDialog] with the app's dialog motion applied (and skipped when the
/// platform asks to reduce motion). Drop-in replacement: same arguments.
Future<T?> showAppDialog<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  Offset? anchorPoint,
  TraversalEdgeBehavior? traversalEdgeBehavior,
  bool? requestFocus,
}) {
  return showDialog<T>(
    context: context,
    builder: builder,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useSafeArea: useSafeArea,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    anchorPoint: anchorPoint,
    traversalEdgeBehavior: traversalEdgeBehavior,
    requestFocus: requestFocus,
    animationStyle: AppMotion.styleOf(context, AppMotion.dialog),
  );
}

/// A [Curve] that follows a unit spring released from 0 towards 1.
///
/// The simulation is normalised so that `t = 1` lands where the oscillation
/// envelope has decayed below 0.2%, which keeps the perceived settle time
/// equal to the animation duration regardless of the damping ratio.
class SpringCurve extends Curve {
  const SpringCurve({this.dampingRatio = AppMotion.springDampingRatio})
    : assert(
        dampingRatio > 0 && dampingRatio < 1,
        'SpringCurve expects an underdamped ratio',
      );

  final double dampingRatio;

  @override
  double transformInternal(double t) {
    // Unit mass, unit stiffness => natural frequency 1 rad/s.
    final zeta = dampingRatio;
    final dampedFrequency = math.sqrt(1 - zeta * zeta);
    final settle = math.log(500) / zeta;
    final time = t * settle;
    final envelope = math.exp(-zeta * time);
    return 1 -
        envelope *
            (math.cos(dampedFrequency * time) +
                (zeta / dampedFrequency) * math.sin(dampedFrequency * time));
  }

  @override
  String toString() => 'SpringCurve($dampingRatio)';
}

/// Press feedback for any tappable surface: scales the child to
/// [AppMotion.pressScale] and dims it slightly while a finger is down, then
/// springs back on release.
///
/// When [onTap]/[onLongPress] are null the widget only *observes* pointers
/// (via [Listener]) so it can wrap Material buttons and [InkWell]s without
/// stealing their gestures. Moving beyond the touch slop (i.e. the user
/// starts scrolling) releases the press immediately so lists never look
/// "stuck" mid-scroll.
class Pressable extends StatefulWidget {
  const Pressable({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.enabled = true,
    this.scale = AppMotion.pressScale,
    this.pressedOpacity = 0.86,
    this.haptic = false,
    this.behavior = HitTestBehavior.opaque,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  /// When false, no feedback is shown and gestures are ignored.
  final bool enabled;
  final double scale;
  final double pressedOpacity;

  /// Fire [HapticFeedback.selectionClick] on tap.
  final bool haptic;
  final HitTestBehavior behavior;

  @override
  State<Pressable> createState() => _PressableState();
}

class _PressableState extends State<Pressable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController.unbounded(
    vsync: this,
  );
  Offset? _downPosition;
  int? _pointer;

  bool get _handlesGestures =>
      widget.onTap != null || widget.onLongPress != null;

  @override
  void didUpdateWidget(covariant Pressable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.enabled && oldWidget.enabled) {
      _release();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _press(PointerDownEvent event) {
    if (!widget.enabled || _pointer != null) {
      return;
    }
    _pointer = event.pointer;
    _downPosition = event.position;
    if (AppMotion.reduced(context)) {
      return;
    }
    unawaited(
      _controller.animateTo(
        1,
        duration: const Duration(milliseconds: 90),
        curve: Curves.easeOut,
      ),
    );
  }

  void _move(PointerMoveEvent event) {
    if (event.pointer != _pointer || _downPosition == null) {
      return;
    }
    if ((event.position - _downPosition!).distance > kTouchSlop) {
      _release();
    }
  }

  void _up(PointerEvent event) {
    if (event.pointer == _pointer) {
      _release();
    }
  }

  void _release() {
    _pointer = null;
    _downPosition = null;
    if (_controller.value == 0 && !_controller.isAnimating) {
      return;
    }
    if (!mounted || AppMotion.reduced(context)) {
      _controller.value = 0;
      return;
    }
    unawaited(
      _controller
          .animateWith(
            SpringSimulation(
              AppMotion.springDescription,
              _controller.value,
              0,
              0,
            ),
          )
          .then((_) {
            // Springs stop within tolerance, not exactly on target.
            if (mounted && _pointer == null) {
              _controller.value = 0;
            }
          }),
    );
  }

  void _handleTap() {
    if (widget.haptic) {
      unawaited(HapticFeedback.selectionClick());
    }
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    // Keep the wrapper structure constant: swapping it in and out would
    // remount the child (and drop an in-flight tap on a wrapped button).
    // The transitions below paint the child untouched at rest, and the
    // boundary lets the child be rasterized once while the press scales and
    // dims its cached layer instead of repainting it every frame.
    Widget child = FadeTransition(
      opacity: _controller.drive(
        Tween<double>(begin: 1, end: widget.pressedOpacity),
      ),
      child: ScaleTransition(
        scale: _controller.drive(Tween<double>(begin: 1, end: widget.scale)),
        child: RepaintBoundary(child: widget.child),
      ),
    );

    if (_handlesGestures) {
      child = GestureDetector(
        behavior: widget.behavior,
        onTap: widget.enabled && widget.onTap != null ? _handleTap : null,
        onLongPress: widget.enabled ? widget.onLongPress : null,
        child: child,
      );
    }

    return Listener(
      behavior: widget.behavior,
      onPointerDown: _press,
      onPointerMove: _move,
      onPointerUp: _up,
      onPointerCancel: _up,
      child: child,
    );
  }
}

/// Fades and lifts its child into place once, when first inserted.
///
/// State is kept for the lifetime of the element, so rebuilds never replay
/// the animation. Do not use inside lazily built list items (they are
/// re-created while scrolling); use it for a handful of static sections.
class FadeSlideIn extends StatefulWidget {
  const FadeSlideIn({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = AppMotion.slow,
    this.offset = 8,
  });

  /// Convenience for staggered groups: delay = [index] * [step].
  FadeSlideIn.staggered({
    super.key,
    required this.child,
    required int index,
    Duration step = const Duration(milliseconds: 40),
    this.duration = AppMotion.slow,
    this.offset = 8,
  }) : delay = step * math.min(index, 8);

  final Widget child;
  final Duration delay;
  final Duration duration;

  /// Vertical distance travelled, in logical pixels.
  final double offset;

  @override
  State<FadeSlideIn> createState() => _FadeSlideInState();
}

class _FadeSlideInState extends State<FadeSlideIn>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
  );
  late final Animation<double> _curve = CurvedAnimation(
    parent: _controller,
    curve: AppMotion.emphasized,
  );
  Timer? _timer;
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) {
      return;
    }
    _started = true;
    if (AppMotion.reduced(context)) {
      _controller.value = 1;
    } else if (widget.delay == Duration.zero) {
      unawaited(_controller.forward());
    } else {
      _timer = Timer(widget.delay, () {
        if (mounted) {
          unawaited(_controller.forward());
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _curve,
      child: AnimatedBuilder(
        animation: _curve,
        child: widget.child,
        builder: (context, child) => Transform.translate(
          offset: Offset(0, widget.offset * (1 - _curve.value)),
          child: child,
        ),
      ),
    );
  }
}

/// Page transitions for the app.
///
/// Android uses the platform predictive-back transition (falls back to
/// Material "fade forwards" for button/programmatic navigation) on a solid
/// surface so no black frame shows between pages. When the platform asks to
/// reduce motion, pages swap instantly.
class AppPageTransitionsBuilder extends PageTransitionsBuilder {
  const AppPageTransitionsBuilder({
    this.delegate = const PredictiveBackPageTransitionsBuilder(),
  });

  final PageTransitionsBuilder delegate;

  @override
  Duration get transitionDuration => delegate.transitionDuration;

  @override
  Duration get reverseTransitionDuration => delegate.reverseTransitionDuration;

  @override
  DelegatedTransitionBuilder? get delegatedTransition {
    final inner = delegate.delegatedTransition;
    if (inner == null) {
      return null;
    }
    return (context, animation, secondaryAnimation, allowSnapshotting, child) =>
        AppMotion.reduced(context)
        ? child
        : inner(
            context,
            animation,
            secondaryAnimation,
            allowSnapshotting,
            child,
          );
  }

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (AppMotion.reduced(context)) {
      return child;
    }
    return delegate.buildTransitions(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
