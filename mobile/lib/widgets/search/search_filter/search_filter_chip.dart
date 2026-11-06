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
    final active = currentFilter != null;
    final scheme = context.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            color: active ? scheme.secondaryContainer : null,
            shape: StadiumBorder(side: BorderSide(color: active ? scheme.outline : scheme.outlineVariant, width: .5)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Icon(icon, size: 18, color: active ? scheme.onSecondaryContainer : scheme.onSurfaceVariant),
                const SizedBox(width: 8),
                currentFilter ??
                    Text(label, style: context.textTheme.labelMedium?.copyWith(color: scheme.onSurfaceVariant)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
