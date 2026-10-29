import 'package:flutter/material.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';

class SearchFilterChip extends StatelessWidget {
  final String label;
  final Function() onTap;
  final Widget? currentFilter;
  final IconData icon;

  const SearchFilterChip({super.key, required this.label, required this.onTap, required this.icon, this.currentFilter});

  @override
  Widget build(BuildContext context) {
    if (currentFilter != null) {
      return GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 0,
          color: context.colorScheme.secondaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: context.colorScheme.outline),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 14.0),
            child: Row(children: [Icon(icon, size: 18), const SizedBox(width: 4.0), currentFilter!]),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: context.colorScheme.outlineVariant),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 14.0),
          child: Row(
            children: [
              Icon(icon, size: 18),
              const SizedBox(width: 4.0),
              Text(label, style: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.onSurfaceVariant)),
            ],
          ),
        ),
      ),
    );
  }
}
