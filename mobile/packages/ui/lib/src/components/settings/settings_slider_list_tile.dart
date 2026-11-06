import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';

class SettingsSliderListTile extends StatelessWidget {
  final ValueNotifier<int> valueNotifier;
  final String text;
  final double maxValue;
  final double minValue;
  final int noDivisons;
  final String? label;
  final bool enabled;
  final Function(int)? onChangeEnd;

  const SettingsSliderListTile({
    required this.valueNotifier,
    required this.text,
    required this.maxValue,
    this.minValue = 0.0,
    required this.noDivisons,
    this.enabled = true,
    this.label,
    this.onChangeEnd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(SettingsMetrics.rowInset, 12, SettingsMetrics.rowInset, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
          ValueListenableBuilder<int>(
            valueListenable: valueNotifier,
            builder: (context, value, _) => SettingsSlider(
              value: value.toDouble(),
              min: minValue,
              max: maxValue,
              divisions: noDivisons,
              label: label ?? '$value',
              enabled: enabled,
              onChanged: (v) => valueNotifier.value = v.toInt(),
              onChangeEnd: (v) => onChangeEnd?.call(v.toInt()),
            ),
          ),
        ],
      ),
    );
  }
}

/// A slider tuned for settings rows: no side padding, accent track.
class SettingsSlider extends StatelessWidget {
  const SettingsSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
    this.onChangeEnd,
    this.label,
    this.enabled = true,
  });

  final double value;
  final double min;
  final double max;
  final int divisions;
  final String? label;
  final bool enabled;
  final ValueChanged<double> onChanged;
  final ValueChanged<double>? onChangeEnd;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(trackHeight: 4, padding: const EdgeInsets.symmetric(vertical: 10)),
      child: Slider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        label: label,
        activeColor: context.primaryColor,
        onChanged: enabled ? onChanged : null,
        onChangeEnd: onChangeEnd,
      ),
    );
  }
}
