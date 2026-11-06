import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/providers/user.provider.dart';
import 'package:immich_mobile/utils/url_helper.dart';
import 'package:immich_mobile/widgets/common/user_circle_avatar.dart';
import 'package:immich_ui/immich_ui.dart';

/// The account header at the top of settings: avatar, name, email and the
/// server this app is signed in to. Renders nothing when signed out.
class SettingsProfileCard extends ConsumerWidget {
  const SettingsProfileCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    if (user == null) {
      return const SizedBox.shrink();
    }

    final serverHost = getServerUrl()?.replaceFirst(RegExp(r'^https?://'), '');
    final scheme = context.colorScheme;

    return SettingsSection(
      children: [
        Padding(
          padding: const EdgeInsets.all(SettingsMetrics.rowInset),
          child: Row(
            children: [
              UserCircleAvatar(user: user, size: 56),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(user.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: context.textTheme.titleMedium),
                    const SizedBox(height: 2),
                    Text(
                      user.email,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                    ),
                    if (serverHost != null) ...[
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(AppIcons.server, size: 13, color: scheme.onSurfaceVariant),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              serverHost,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.monoStyle.copyWith(fontSize: 12, color: scheme.onSurfaceVariant),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
