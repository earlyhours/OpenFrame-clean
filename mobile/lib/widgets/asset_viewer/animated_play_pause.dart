import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:immich_ui/immich_ui.dart';

/// A widget that animates implicitly between a play and a pause icon.
class AnimatedPlayPause extends StatefulWidget {
  const AnimatedPlayPause({super.key, required this.playing, this.size, this.color, this.shadows});

  final double? size;
  final bool playing;
  final Color? color;
  final List<Shadow>? shadows;

  @override
  State<StatefulWidget> createState() => AnimatedPlayPauseState();
}

class AnimatedPlayPauseState extends State<AnimatedPlayPause> with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    value: widget.playing ? 1 : 0,
    duration: const Duration(milliseconds: 300),
  );

  @override
  void didUpdateWidget(AnimatedPlayPause oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.playing != oldWidget.playing) {
      if (widget.playing) {
        unawaited(animationController.forward());
      } else {
        unawaited(animationController.reverse());
      }
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildIcon(Color? color) => AnimatedBuilder(
      animation: animationController,
      builder: (context, _) => SizedBox.square(
        dimension: widget.size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 1 - animationController.value,
              child: Icon(AppIcons.play, color: color, size: widget.size),
            ),
            Opacity(
              opacity: animationController.value,
              child: Icon(AppIcons.pause, color: color, size: widget.size),
            ),
          ],
        ),
      ),
    );

    final icon = buildIcon(widget.color);

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (final shadow in widget.shadows ?? const <Shadow>[])
            Transform.translate(
              offset: shadow.offset,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: shadow.blurRadius / 2, sigmaY: shadow.blurRadius / 2),
                child: buildIcon(shadow.color),
              ),
            ),
          icon,
        ],
      ),
    );
  }
}
