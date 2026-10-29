import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/providers/timeline/multiselect.provider.dart';

class MultiSelectStatusButton extends ConsumerWidget {
  const MultiSelectStatusButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectCount = ref.watch(multiSelectProvider.select((s) => s.selectedAssets.length));
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: context.primaryColor,
        backgroundColor: context.colorScheme.surfaceContainer,
        minimumSize: const Size(48, 44),
        side: BorderSide(color: context.colorScheme.outlineVariant),
      ),
      onPressed: () => ref.read(multiSelectProvider.notifier).reset(),
      icon: Icon(Icons.close_rounded, color: context.primaryColor),
      label: Text(selectCount.toString(), style: context.textTheme.labelLarge?.copyWith(color: context.primaryColor)),
    );
  }
}
