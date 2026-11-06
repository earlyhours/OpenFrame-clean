import 'package:flutter/material.dart';

/// The warm fluted glass is confined to entry screens, away from photographs.
class LoginBackdrop extends StatelessWidget {
  const LoginBackdrop({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: IgnorePointer(
            child: RepaintBoundary(
              child: CustomPaint(painter: _FlutedGlassPainter(Theme.of(context).colorScheme.surface)),
            ),
          ),
        ),
        child,
      ],
    );
  }
}

class _FlutedGlassPainter extends CustomPainter {
  const _FlutedGlassPainter(this.background);

  final Color background;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    canvas.drawRect(rect, Paint()..color = background);
    final glow = Rect.fromLTWH(-size.width * .4, -size.height * .35, size.width * 1.8, size.height * 1.05);
    canvas.drawRect(
      rect,
      Paint()
        ..shader = const RadialGradient(
          center: Alignment(-.5, -.6),
          radius: 1,
          colors: [Color(0xD9C16A24), Color(0xA17A3428), Color(0x664C263E), Color(0x0027192D)],
          stops: [0, .35, .65, 1],
        ).createShader(glow),
    );
    final ribs = Paint();
    for (double x = 0; x < size.width; x += 18) {
      final rib = Rect.fromLTWH(x, 0, 18, size.height);
      ribs.shader = const LinearGradient(
        colors: [Color(0x55000000), Color(0x12F2F1EC), Color(0x05000000), Color(0x77000000)],
        stops: [0, .24, .5, 1],
      ).createShader(rib);
      canvas.drawRect(rib, ribs);
    }
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [background.withValues(alpha: .06), background.withValues(alpha: .5), background, background],
          stops: const [0, .28, .62, 1],
        ).createShader(rect),
    );
  }

  @override
  bool shouldRepaint(_FlutedGlassPainter oldDelegate) => background != oldDelegate.background;
}
