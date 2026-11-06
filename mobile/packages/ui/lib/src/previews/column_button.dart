import 'package:flutter/material.dart';
import 'package:immich_ui/src/components/column_button.dart';
import 'package:immich_ui/src/icons.dart';
import 'package:immich_ui/src/previews.dart';

void _previewNoop() {}

@ImmichPreview(group: 'ColumnButton', name: 'Default')
Widget previewColumnButtonDefault() => const Wrap(
  spacing: 12,
  runSpacing: 12,
  children: [
    ImmichColumnButton(
      onPressed: _previewNoop,
      icon: AppIcons.heart,
      label: 'Favorite',
    ),
    ImmichColumnButton(
      onPressed: _previewNoop,
      icon: AppIcons.archive,
      label: 'Archive',
    ),
    ImmichColumnButton(
      onPressed: _previewNoop,
      icon: AppIcons.trash2,
      label: 'Delete',
    ),
  ],
);

@ImmichPreview(group: 'ColumnButton', name: 'Loading')
Widget previewColumnButtonLoading() => ImmichColumnButton(
  onPressed: () => Future<void>.delayed(const .new(seconds: 2)),
  icon: AppIcons.download,
  label: 'Download',
);

@ImmichPreview(group: 'ColumnButton', name: 'Disabled')
Widget previewColumnButtonDisabled() => const ImmichColumnButton(
  onPressed: _previewNoop,
  icon: AppIcons.share2,
  label: 'Share',
  disabled: true,
);
