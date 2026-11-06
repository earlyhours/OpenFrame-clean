import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

/// Which edge of a [FrostedBar] carries a hairline.
enum FrostedEdge { none, top, bottom }

/// A translucent, blurred surface for app bars, the tab bar and toolbars.
///
/// Paints the theme surface at ~72% (dark) / ~78% (light) opacity over a
/// backdrop blur. Blurring is the expensive part, so it is only applied while
/// [enabled]; pass `enabled: false` (e.g. when nothing scrolls beneath the
/// bar) and the bar paints an almost-opaque surface instead, which looks the
/// same over the page background. High-contrast mode always paints solid.
///
/// ```dart
/// FrostedBar(
///   edge: FrostedEdge.bottom,
///   child: SafeArea(bottom: false, child: SizedBox(height: 52, child: toolbar)),
/// )
/// ```
class FrostedBar extends StatelessWidget {
  const FrostedBar({
    super.key,
    required this.child,
    this.enabled = true,
    this.sigma = 24,
    this.color,
    this.opacity,
    this.edge = FrostedEdge.none,
    this.hairlineOpacity = 1,
    this.borderRadius,
  });

  final Widget child;

  /// Apply the backdrop blur. When false, paints a solid surface.
  final bool enabled;

  /// Blur sigma, in logical pixels.
  final double sigma;

  /// Tint color. Defaults to [ColorScheme.surface].
  final Color? color;

  /// Opacity of the tint while blurring. Defaults to 0.72 dark / 0.78 light.
  final double? opacity;

  /// Edge that draws a 0.5px hairline.
  final FrostedEdge edge;

  /// Opacity of the hairline, 0..1. Animate it to fade the hairline in when
  /// content starts scrolling under the bar.
  final double hairlineOpacity;

  /// Rounds and clips the bar, e.g. a floating pill.
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = scheme.brightness == Brightness.dark;
    final highContrast = MediaQuery.maybeHighContrastOf(context) ?? false;
    final blur = enabled && !highContrast;
    final base = color ?? scheme.surface;
    final alpha = blur ? (opacity ?? (isDark ? .72 : .78)) : .96;

    final hairline = BorderSide(
      color: scheme.outlineVariant.withValues(
        alpha: (isDark ? .9 : .8) * hairlineOpacity.clamp(0.0, 1.0),
      ),
      width: .5,
    );
    final border = switch (edge) {
      _ when hairlineOpacity <= 0 => null,
      FrostedEdge.none => null,
      FrostedEdge.top => Border(top: hairline),
      FrostedEdge.bottom => Border(bottom: hairline),
    };

    Widget bar = DecoratedBox(
      decoration: BoxDecoration(
        color: base.withValues(alpha: alpha),
        border: border,
        borderRadius: borderRadius,
      ),
      child: child,
    );
    if (blur) {
      bar = BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigma,
          sigmaY: sigma,
          tileMode: TileMode.mirror,
        ),
        child: bar,
      );
    }
    return borderRadius == null
        ? ClipRect(child: bar)
        : ClipRRect(borderRadius: borderRadius!, child: bar);
  }
}
