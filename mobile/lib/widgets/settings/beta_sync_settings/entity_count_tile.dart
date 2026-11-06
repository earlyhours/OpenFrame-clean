import 'package:flutter/material.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_ui/immich_ui.dart';

class EntityCountTile extends StatelessWidget {
  final int count;
  final String label;
  final IconData icon;

  const EntityCountTile({super.key, required this.count, required this.label, required this.icon});

  String zeroPadding(int number, int targetWidth) {
    final numStr = number.toString();
    return numStr.length < targetWidth ? "0" * (targetWidth - numStr.length) : "";
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = (screenWidth - 32 - 8) / 2;
    const double charWidth = 11.0;
    final maxDigits = ((availableWidth - 32) / charWidth).floor().clamp(1, 8);

    return Padding(
      padding: const EdgeInsets.all(SettingsMetrics.rowInset),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: context.colorScheme.onSurfaceVariant, size: 15),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.onSurfaceVariant),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: context.monoStyle.copyWith(fontSize: 20),
              children: [
                TextSpan(
                  text: zeroPadding(count, maxDigits),
                  style: TextStyle(color: context.colorScheme.onSurface.withValues(alpha: .18)),
                ),
                TextSpan(
                  text: count.toString(),
                  style: TextStyle(color: context.colorScheme.onSurface),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
