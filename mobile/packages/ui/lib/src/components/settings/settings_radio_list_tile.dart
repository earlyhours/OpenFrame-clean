import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';
import 'package:immich_ui/src/components/settings/settings_tile.dart';
import 'package:immich_ui/src/icons.dart';

class SettingsRadioGroup<T> {
  final String title;
  final T value;

  const SettingsRadioGroup({required this.title, required this.value});
}

/// A single-choice list: one [SettingsTile] per option, a check on the
/// selected one. Place it inside a [SettingsSection]; it draws its own
/// dividers between options.
class SettingsRadioListTile<T> extends StatelessWidget {
  final List<SettingsRadioGroup<T>> groups;
  final T groupBy;
  final void Function(T?) onRadioChanged;

  const SettingsRadioListTile({super.key, required this.groups, required this.groupBy, required this.onRadioChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < groups.length; i++) ...[
          if (i > 0) const SettingsDivider(),
          SettingsTile(
            title: groups[i].title,
            showChevron: false,
            selected: false,
            onTap: () => onRadioChanged(groups[i].value),
            trailing: groups[i].value == groupBy
                ? Icon(AppIcons.check, size: 20, color: context.primaryColor)
                : const SizedBox(width: 20),
          ),
        ],
      ],
    );
  }
}
