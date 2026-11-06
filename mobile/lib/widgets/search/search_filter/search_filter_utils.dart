import 'package:flutter/material.dart';
import 'package:immich_ui/immich_ui.dart';

Future<T> showFilterBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  bool isScrollControlled = false,
  bool isDismissible = true,
}) async {
  return await showModalBottomSheet(
    sheetAnimationStyle: AppMotion.styleOf(context, AppMotion.sheet),
    context: context,
    isScrollControlled: isScrollControlled,
    useSafeArea: false,
    isDismissible: isDismissible,
    showDragHandle: isDismissible,
    builder: (BuildContext context) {
      return child;
    },
  );
}
