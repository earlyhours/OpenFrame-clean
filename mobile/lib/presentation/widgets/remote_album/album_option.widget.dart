import 'package:flutter/material.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/presentation/widgets/action_buttons/base_action_button.widget.dart';
import 'package:immich_ui/immich_ui.dart';

class RemoteAlbumOption extends StatelessWidget {
  const RemoteAlbumOption({
    super.key,
    this.onAddPhotos,
    this.onAddUsers,
    this.onDeleteAlbum,
    this.onLeaveAlbum,
    this.onCreateSharedLink,
    this.onToggleAlbumOrder,
    this.onEditAlbum,
    this.onShowOptions,
    this.iconColor,
    this.iconShadows,
  });

  final VoidCallback? onAddPhotos;
  final VoidCallback? onAddUsers;
  final VoidCallback? onDeleteAlbum;
  final VoidCallback? onLeaveAlbum;
  final VoidCallback? onCreateSharedLink;
  final VoidCallback? onToggleAlbumOrder;
  final VoidCallback? onEditAlbum;
  final VoidCallback? onShowOptions;
  final Color? iconColor;
  final List<Shadow>? iconShadows;

  @override
  Widget build(BuildContext context) {
    final theme = context.themeData;
    final menuChildren = <Widget>[];

    if (onEditAlbum != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.edit_album,
          iconData: AppIcons.pencil,
          onPressed: onEditAlbum,
          menuItem: true,
        ),
      );
    }

    if (onAddPhotos != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.add_photos,
          iconData: AppIcons.imagePlus,
          onPressed: onAddPhotos,
          menuItem: true,
        ),
      );
    }

    if (onAddUsers != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.album_viewer_page_share_add_users,
          iconData: AppIcons.userPlus,
          onPressed: onAddUsers,
          menuItem: true,
        ),
      );
    }

    if (onLeaveAlbum != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.leave_album,
          iconData: AppIcons.userMinus,
          onPressed: onLeaveAlbum,
          menuItem: true,
        ),
      );
    }

    if (onToggleAlbumOrder != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.change_display_order,
          iconData: AppIcons.arrowUpDown,
          onPressed: onToggleAlbumOrder,
          menuItem: true,
        ),
      );
    }

    if (onCreateSharedLink != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.create_shared_link,
          iconData: AppIcons.link,
          onPressed: onCreateSharedLink,
          menuItem: true,
        ),
      );
    }

    if (onShowOptions != null) {
      menuChildren.add(
        BaseActionButton(
          label: context.t.options,
          iconData: AppIcons.settings,
          onPressed: onShowOptions,
          menuItem: true,
        ),
      );
    }

    if (onDeleteAlbum != null) {
      menuChildren.add(const Divider(height: 1));
      menuChildren.add(
        BaseActionButton(
          label: context.t.delete_album,
          iconData: AppIcons.trash2,
          iconColor: context.isDarkTheme ? Colors.red[400] : Colors.red[800],
          onPressed: onDeleteAlbum,
          menuItem: true,
        ),
      );
    }

    return MenuAnchor(
      consumeOutsideTap: true,
      style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(theme.scaffoldBackgroundColor),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.grey),
        elevation: const WidgetStatePropertyAll(4),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 6)),
      ),
      menuChildren: [
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 150),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: menuChildren,
          ),
        ),
      ],
      builder: (context, controller, child) {
        return IconButton(
          icon: Icon(AppIcons.ellipsisVertical, color: iconColor ?? Colors.white, shadows: iconShadows),
          onPressed: () => controller.isOpen ? controller.close() : controller.open(),
        );
      },
    );
  }
}
