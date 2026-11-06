import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';

/// Layout constants shared by every settings row so the whole settings area
/// lines up: same inset, same minimum height, same leading badge.
abstract final class SettingsMetrics {
  /// Horizontal inset of the grouped list from the screen edge.
  static const double pageInset = 16;

  /// Horizontal padding inside a row.
  static const double rowInset = 16;

  /// Minimum row height.
  static const double rowHeight = 52;

  /// Corner radius of a group.
  static const double radius = 16;

  /// Side of the rounded-square icon badge.
  static const double badge = 30;

  /// Gap between the badge and the row text.
  static const double badgeGap = 12;

  /// Where the hairline divider starts for rows that have a leading badge.
  static const double badgeDividerInset = rowInset + badge + badgeGap;

  /// Space below a section, before the next header.
  static const double sectionGap = 24;
}

/// An inset, rounded group of rows with an optional header above and footer
/// below, in the style of Apple's grouped lists.
///
/// Rows (usually [SettingsTile], or any of the `Settings*ListTile` widgets)
/// are separated by inset hairline dividers. Set [hasLeadingBadges] when the
/// rows start with a [SettingsIconBadge] so dividers begin at the text.
///
/// The section owns its horizontal page inset and bottom spacing, so a list
/// of sections needs no extra padding or separators.
class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
    this.title,
    this.footer,
    required this.children,
    this.hasLeadingBadges = false,
    this.padding = const EdgeInsets.fromLTRB(
      SettingsMetrics.pageInset,
      0,
      SettingsMetrics.pageInset,
      SettingsMetrics.sectionGap,
    ),
  });

  /// Muted header above the group.
  final String? title;

  /// Muted explanatory text below the group.
  final String? footer;

  final List<Widget> children;

  /// Start dividers after the leading badge instead of at the row inset.
  final bool hasLeadingBadges;

  /// Outer padding. Defaults to the page inset and the section gap below.
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final rows = children;
    final dividerInset = hasLeadingBadges ? SettingsMetrics.badgeDividerInset : SettingsMetrics.rowInset;

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null) SettingsSectionHeader(title: title!),
          Material(
            color: context.colorScheme.surfaceContainer,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(SettingsMetrics.radius)),
              side: BorderSide(
                color: context.colorScheme.outlineVariant.withValues(alpha: context.isDarkTheme ? .5 : .6),
                width: .5,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = 0; i < rows.length; i++) ...[if (i > 0) SettingsDivider(inset: dividerInset), rows[i]],
              ],
            ),
          ),
          if (footer != null) SettingsSectionFooter(text: footer!),
        ],
      ),
    );
  }
}

/// The inset hairline between rows of a [SettingsSection].
class SettingsDivider extends StatelessWidget {
  const SettingsDivider({super.key, this.inset = SettingsMetrics.rowInset});

  final double inset;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: .5,
      thickness: .5,
      indent: inset,
      color: context.colorScheme.outlineVariant.withValues(alpha: context.isDarkTheme ? .6 : .8),
    );
  }
}

/// Muted header text used above a [SettingsSection].
class SettingsSectionHeader extends StatelessWidget {
  const SettingsSectionHeader({super.key, required this.title, this.padding});

  final String title;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.fromLTRB(SettingsMetrics.rowInset + 4, 0, SettingsMetrics.rowInset, 8),
      child: Text(title, style: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.onSurfaceVariant)),
    );
  }
}

/// Muted explanatory text used below a [SettingsSection].
class SettingsSectionFooter extends StatelessWidget {
  const SettingsSectionFooter({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(SettingsMetrics.rowInset + 4, 8, SettingsMetrics.rowInset, 0),
      child: Text(text, style: context.textTheme.bodySmall),
    );
  }
}
