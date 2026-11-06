import 'package:flutter/material.dart';
import 'package:immich_ui/src/components/menu_item.dart';
import 'package:immich_ui/src/icons.dart';
import 'package:immich_ui/src/previews.dart';

void _previewNoop() {}

@ImmichPreview(group: 'MenuItem', name: 'Default')
Widget previewMenuItemDefault() => const Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    ImmichMenuItem(onPressed: _previewNoop, icon: AppIcons.info, label: 'Info'),
    ImmichMenuItem(
      onPressed: _previewNoop,
      icon: AppIcons.circleHelp,
      label: 'Troubleshoot',
    ),
    ImmichMenuItem(onPressed: _previewNoop, icon: AppIcons.cast, label: 'Cast'),
  ],
);

@ImmichPreview(group: 'MenuItem', name: 'Disabled')
Widget previewMenuItemDisabled() => const ImmichMenuItem(
  onPressed: _previewNoop,
  icon: AppIcons.trash2,
  label: 'Delete',
  disabled: true,
);
