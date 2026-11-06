import 'package:flutter/material.dart';
import 'package:immich_ui/extensions/build_context_extensions.dart';
import 'package:immich_ui/src/components/settings/settings_section.dart';
import 'package:immich_ui/src/icons.dart';
import 'package:immich_ui/src/typography.dart';

/// A rounded-square icon badge for the start of a settings row.
///
/// Neutral by default (the design keeps icons quiet and reserves the accent
/// for state); pass [tint] for a tinted badge, or [destructive] for the error
/// color.
class SettingsIconBadge extends StatelessWidget {
  const SettingsIconBadge({super.key, required this.icon, this.tint, this.destructive = false, this.enabled = true});

  final IconData icon;
  final Color? tint;
  final bool destructive;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final base = destructive ? scheme.error : tint ?? scheme.onSurfaceVariant;
    final background = destructive || tint != null
        ? base.withValues(alpha: .14)
        : scheme.onSurface.withValues(alpha: .07);

    return Opacity(
      opacity: enabled ? 1 : .4,
      child: Container(
        width: SettingsMetrics.badge,
        height: SettingsMetrics.badge,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: background, borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Icon(icon, size: 18, color: base),
      ),
    );
  }
}

/// A single row of a [SettingsSection]: optional leading badge, title,
/// optional subtitle, and a trailing widget, value or chevron.
///
/// Every row is at least [SettingsMetrics.rowHeight] tall and uses the same
/// horizontal inset, so badges, text and chevrons line up down the list.
class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.leading,
    this.iconTint,
    this.trailing,
    this.value,
    this.showChevron,
    this.onTap,
    this.selected = false,
    this.destructive = false,
    this.enabled = true,
    this.monoValue = false,
    this.monoTitle = false,
    this.monoSubtitle = false,
  });

  final String title;
  final String? subtitle;

  /// Convenience for a [SettingsIconBadge]. Use [leading] for anything else.
  final IconData? icon;
  final Widget? leading;
  final Color? iconTint;

  /// Replaces the value and chevron.
  final Widget? trailing;

  /// Muted text shown before the chevron.
  final String? value;

  /// Defaults to true when [onTap] is set and there is no [trailing].
  final bool? showChevron;
  final VoidCallback? onTap;
  final bool selected;
  final bool destructive;
  final bool enabled;

  /// Render [value] in the mono face (URLs, versions).
  final bool monoValue;

  /// Render the title or subtitle in the mono face (URLs, hostnames).
  final bool monoTitle;
  final bool monoSubtitle;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final textTheme = context.textTheme;
    final active = enabled && onTap != null;
    final chevron = showChevron ?? (onTap != null && trailing == null);

    final titleColor = destructive
        ? scheme.error
        : enabled
        ? scheme.onSurface
        : scheme.onSurface.withValues(alpha: .4);

    final leadingWidget =
        leading ??
        (icon != null
            ? SettingsIconBadge(icon: icon!, tint: iconTint, destructive: destructive, enabled: enabled)
            : null);

    final row = ConstrainedBox(
      constraints: const BoxConstraints(minHeight: SettingsMetrics.rowHeight),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SettingsMetrics.rowInset, vertical: 10),
        child: Row(
          children: [
            if (leadingWidget != null) ...[leadingWidget, const SizedBox(width: SettingsMetrics.badgeGap)],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500, color: titleColor),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      style: textTheme.bodySmall?.copyWith(
                        color: enabled ? scheme.onSurfaceVariant : scheme.onSurfaceVariant.withValues(alpha: .5),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (value != null && trailing == null) ...[
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  value!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: (monoValue ? context.monoStyle.copyWith(fontSize: 12) : textTheme.bodyMedium)?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
            if (trailing != null) ...[const SizedBox(width: 12), trailing!],
            if (chevron) ...[
              const SizedBox(width: 6),
              Icon(AppIcons.chevronRightDir, size: 18, color: scheme.onSurfaceVariant.withValues(alpha: .6)),
            ],
          ],
        ),
      ),
    );

    return Semantics(
      button: active,
      selected: selected,
      child: Ink(
        color: selected ? scheme.primary.withValues(alpha: .1) : null,
        child: InkWell(onTap: active ? onTap : null, child: row),
      ),
    );
  }
}
