import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:immich_mobile/utils/connect_payload.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ConnectQrScannerPage extends StatefulWidget {
  const ConnectQrScannerPage({super.key});

  @override
  State<ConnectQrScannerPage> createState() => _ConnectQrScannerPageState();
}

class _ConnectQrScannerPageState extends State<ConnectQrScannerPage> {
  final _controller = MobileScannerController(formats: [BarcodeFormat.qrCode]);
  bool _completed = false;
  String? _error;

  @override
  void dispose() {
    unawaited(_controller.dispose());
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_completed) {
      return;
    }
    for (final barcode in capture.barcodes) {
      final payload = barcode.rawValue;
      if (payload == null) {
        continue;
      }
      final url = parseConnectPayload(payload);
      if (url == null) {
        if (_error == null) {
          setState(() => _error = 'This code does not contain a server address. Try another code.');
        }
        continue;
      }
      _completed = true;
      unawaited(HapticFeedback.mediumImpact());
      Navigator.of(context).pop(url);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final side = math.min(280.0, math.min(constraints.maxWidth - 48, constraints.maxHeight * .42));
          final window = Rect.fromCenter(center: constraints.biggest.center(Offset.zero), width: side, height: side);
          return Stack(
            fit: StackFit.expand,
            children: [
              MobileScanner(
                controller: _controller,
                scanWindow: window,
                onDetect: _onDetect,
                errorBuilder: (context, error) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      error.errorCode == MobileScannerErrorCode.permissionDenied
                          ? 'Allow camera access in Settings to scan a code. You can also enter your server address manually.'
                          : 'The camera is unavailable. Close the scanner and try again, or enter your server address manually.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              IgnorePointer(child: CustomPaint(painter: _ViewfinderPainter(window))),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton.filledTonal(
                            tooltip: 'Close scanner',
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(AppIcons.x),
                          ),
                          ValueListenableBuilder(
                            valueListenable: _controller,
                            builder: (context, state, _) => IconButton.filledTonal(
                              tooltip: state.torchState == TorchState.on ? 'Turn torch off' : 'Turn torch on',
                              onPressed: state.torchState == TorchState.unavailable ? null : _controller.toggleTorch,
                              icon: Icon(
                                state.torchState == TorchState.on ? AppIcons.flashlightOff : AppIcons.flashlight,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Scan QR code',
                        style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      Text(
                        _error ?? 'Point your camera at the QR code shown by OpenFrame on your computer.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ViewfinderPainter extends CustomPainter {
  const _ViewfinderPainter(this.window);
  final Rect window;

  @override
  void paint(Canvas canvas, Size size) {
    final cutout = RRect.fromRectAndRadius(window, const Radius.circular(24));
    final mask = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(Offset.zero & size)
      ..addRRect(cutout);
    canvas.drawPath(mask, Paint()..color = Colors.black.withValues(alpha: .55));
    canvas.drawRRect(
      cutout,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
  }

  @override
  bool shouldRepaint(_ViewfinderPainter oldDelegate) => oldDelegate.window != window;
}
