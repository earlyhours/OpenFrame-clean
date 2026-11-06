import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/data/store.dart';
import 'package:immich_mobile/demo/demo_mode.dart';
import 'package:immich_mobile/domain/models/user.model.dart';
import 'package:immich_mobile/extensions/asyncvalue_extensions.dart';
import 'package:immich_mobile/extensions/build_context_extensions.dart';
import 'package:immich_mobile/generated/translations.g.dart';
import 'package:immich_mobile/presentation/widgets/images/local_album_thumbnail.widget.dart';
import 'package:immich_mobile/presentation/widgets/images/remote_image_provider.dart';
import 'package:immich_mobile/presentation/widgets/images/thumbnail.widget.dart';
import 'package:immich_mobile/presentation/widgets/people/partner_user_avatar.widget.dart';
import 'package:immich_mobile/providers/infrastructure/album.provider.dart';
import 'package:immich_mobile/providers/infrastructure/memory.provider.dart';
import 'package:immich_mobile/providers/infrastructure/user.provider.dart';
import 'package:immich_mobile/providers/server_info.provider.dart';
import 'package:immich_mobile/providers/user.provider.dart';
import 'package:immich_mobile/routing/router.dart';
import 'package:immich_mobile/utils/image_url_builder.dart';
import 'package:immich_mobile/widgets/common/immich_sliver_app_bar.dart';
import 'package:immich_mobile/widgets/map/map_thumbnail.dart';
import 'package:immich_ui/immich_ui.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

@RoutePage()
class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ImmichSliverAppBar(
            largeTitle: context.t.library$,
            snap: false,
            floating: false,
            pinned: true,
            showUploadButton: false,
          ),
          const _ActionButtonGrid(),
          const _CollectionCards(),
          const _QuickAccessButtonList(),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}

class _ActionButtonGrid extends ConsumerWidget {
  const _ActionButtonGrid();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTrashEnable = ref.watch(serverInfoProvider.select((state) => state.serverFeatures.trash));

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(ImmichSpacing.lg, ImmichSpacing.sm, ImmichSpacing.lg, ImmichSpacing.md),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Row(
              children: [
                _ActionButton(
                  icon: AppIcons.heart,
                  onTap: () => context.pushRoute(const FavoriteRoute()),
                  label: context.t.favorites,
                ),
                const SizedBox(width: ImmichSpacing.sm),
                _ActionButton(
                  icon: AppIcons.archive,
                  onTap: () => context.pushRoute(const ArchiveRoute()),
                  label: context.t.archived,
                ),
              ],
            ),
            const SizedBox(height: ImmichSpacing.sm),
            Row(
              children: [
                _ActionButton(
                  icon: AppIcons.link,
                  onTap: () => context.pushRoute(const SharedLinkRoute()),
                  label: context.t.shared_links,
                ),
                isTrashEnable ? const SizedBox(width: ImmichSpacing.sm) : const SizedBox.shrink(),
                isTrashEnable
                    ? _ActionButton(
                        icon: AppIcons.trash2,
                        onTap: () => context.pushRoute(const TrashRoute()),
                        label: context.t.trash,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.icon, required this.onTap, required this.label});

  final IconData icon;
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton.icon(
        onPressed: onTap,
        label: Padding(
          padding: const EdgeInsets.only(left: ImmichSpacing.xs),
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.titleSmall?.copyWith(color: context.colorScheme.onSurface),
          ),
        ),
        style: FilledButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(0, 56),
          padding: const EdgeInsets.symmetric(horizontal: ImmichSpacing.lg, vertical: ImmichSpacing.md),
          backgroundColor: context.colorScheme.surfaceContainer,
          alignment: Alignment.centerLeft,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(ImmichRadius.lg))),
        ),
        icon: Icon(icon, size: ImmichIconSize.md, color: context.colorScheme.onSurfaceVariant),
      ),
    );
  }
}

class _CollectionCards extends StatelessWidget {
  const _CollectionCards();

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: ImmichSpacing.lg),
      sliver: SliverToBoxAdapter(
        child: Wrap(
          spacing: ImmichSpacing.sm,
          runSpacing: ImmichSpacing.sm,
          children: [
            _PeopleCollectionCard(),
            _PlacesCollectionCard(),
            _LocalAlbumsCollectionCard(),
            _MemoriesCollectionCard(),
          ],
        ),
      ),
    );
  }
}

/// A square preview tile with its title underneath. The tile is two to a row
/// on phones and four on tablets, inside the page's 16 gutters and 8 gap.
class _CollectionCard extends StatelessWidget {
  const _CollectionCard({required this.title, required this.onTap, required this.child});

  final String title;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;
        final columns = isTablet ? 4 : 2;
        final size = (context.width - ImmichSpacing.lg * 2 - ImmichSpacing.sm * (columns - 1)) / columns;

        return Pressable(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: SizedBox(
              width: size,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox.square(
                    dimension: size,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(ImmichRadius.lg)),
                        color: context.colorScheme.surfaceContainer,
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(ImmichRadius.lg), child: child),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(ImmichSpacing.xs, ImmichSpacing.sm, ImmichSpacing.xs, 0),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(color: context.colorScheme.onSurface),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// 2x2 preview grid inside a [_CollectionCard].
class _PreviewGrid extends StatelessWidget {
  const _PreviewGrid({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(ImmichSpacing.md),
      crossAxisSpacing: ImmichSpacing.sm,
      mainAxisSpacing: ImmichSpacing.sm,
      physics: const NeverScrollableScrollPhysics(),
      children: children,
    );
  }
}

class _PeopleCollectionCard extends ConsumerWidget {
  const _PeopleCollectionCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final people = ref.watch(Store.people.all());

    return _CollectionCard(
      title: context.t.people,
      onTap: () => context.pushRoute(const PeopleCollectionRoute()),
      child: people.widgetWhen(
        onLoading: () => const Center(child: CircularProgressIndicator()),
        onData: (people) => _PreviewGrid(
          children: [
            for (final person in people.take(4))
              CircleAvatar(
                backgroundImage: RemoteImageProvider(url: getFaceThumbnailUrl(person.id, updatedAt: person.updatedAt)),
              ),
          ],
        ),
      ),
    );
  }
}

class _PlacesCollectionCard extends StatelessWidget {
  const _PlacesCollectionCard();

  @override
  Widget build(BuildContext context) {
    return _CollectionCard(
      title: context.t.places,
      onTap: () => context.pushRoute(PlaceRoute(currentLocation: null)),
      child: IgnorePointer(
        child: MapThumbnail(
          zoom: 8,
          centre: (kDemoMode ? const LatLng(37.7694, -122.4862) : const LatLng(21.44950, -157.91959)),
          showAttribution: false,
          themeMode: context.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
        ),
      ),
    );
  }
}

class _LocalAlbumsCollectionCard extends ConsumerWidget {
  const _LocalAlbumsCollectionCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final albums = ref.watch(localAlbumProvider);
    final placeholder = Center(
      child: Icon(AppIcons.smartphone, color: context.colorScheme.onSurfaceVariant, size: ImmichIconSize.lg),
    );

    return _CollectionCard(
      title: context.t.on_this_device,
      onTap: () => context.pushRoute(const LocalAlbumsRoute()),
      child: albums.when(
        data: (data) => data.isEmpty
            ? placeholder
            : _PreviewGrid(children: [for (final album in data.take(4)) LocalAlbumThumbnail(albumId: album.id)]),
        error: (error, _) => Center(child: Text(context.t.error_saving_image(error: error.toString()))),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _MemoriesCollectionCard extends ConsumerWidget {
  const _MemoriesCollectionCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memories = ref.watch(allMemoriesProvider(false));

    return _CollectionCard(
      title: context.t.memories,
      onTap: () => context.pushRoute(const MemoryListRoute()),
      child: memories.widgetWhen(
        onLoading: () => const Center(child: CircularProgressIndicator()),
        onData: (memories) => _PreviewGrid(
          children: [
            for (final memory in memories.take(4))
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(ImmichRadius.sm)),
                child: Thumbnail.remote(
                  remoteId: memory.assets[0].id,
                  thumbhash: memory.assets[0].thumbHash ?? "",
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

@visibleForTesting
final sharedWithPartnerProvider = StreamProvider.autoDispose<Iterable<Partner>>((ref) {
  final currentUser = ref.watch(currentUserProvider);
  if (currentUser == null) {
    // TODO: Refactor with a route guard to avoid this check in every provider
    return const .empty();
  }

  return ref.watch(partnerServiceProvider).search(currentUser.id, .sharedWith);
});

class _QuickAccessItem {
  final Widget leading;
  final String title;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? contentPadding;

  const _QuickAccessItem({required this.leading, required this.title, required this.onTap, this.contentPadding});
}

class _QuickAccessButtonList extends ConsumerWidget {
  const _QuickAccessButtonList();

  static const _tileRadius = ImmichRadius.lg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final partnerSharedWithAsync = ref.watch(sharedWithPartnerProvider);
    final partners = partnerSharedWithAsync.valueOrNull ?? [];

    final items = [
      _QuickAccessItem(
        leading: const Icon(AppIcons.folder, size: ImmichIconSize.md),
        title: context.t.folders,
        onTap: () => context.pushRoute(FolderRoute()),
      ),
      _QuickAccessItem(
        leading: const Icon(AppIcons.lockKeyhole, size: ImmichIconSize.md),
        title: context.t.locked_folder,
        onTap: () => context.pushRoute(const LockedFolderRoute()),
      ),
      _QuickAccessItem(
        leading: const Icon(AppIcons.users, size: ImmichIconSize.md),
        title: context.t.partners,
        onTap: () => context.pushRoute(const PartnerRoute()),
      ),
      for (final partner in partners)
        _QuickAccessItem(
          contentPadding: const EdgeInsets.symmetric(horizontal: ImmichSpacing.lg),
          leading: PartnerUserAvatar(userId: partner.id, name: partner.name),
          title: context.t.partner_list_user_photos(user: partner.name),
          onTap: () => context.pushRoute(PartnerDetailRoute(partner: partner)),
        ),
    ];

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(ImmichSpacing.lg, ImmichSpacing.lg, ImmichSpacing.lg, ImmichSpacing.xl),
      sliver: SliverToBoxAdapter(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.outlineVariant, width: .5),
            borderRadius: const BorderRadius.all(Radius.circular(_tileRadius)),
            color: context.colorScheme.surfaceContainer,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              final isFirst = index == 0;
              final isLast = index == items.length - 1;
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isFirst ? _tileRadius : 0),
                    topRight: Radius.circular(isFirst ? _tileRadius : 0),
                    bottomLeft: Radius.circular(isLast ? _tileRadius : 0),
                    bottomRight: Radius.circular(isLast ? _tileRadius : 0),
                  ),
                ),
                contentPadding: item.contentPadding,
                leading: item.leading,
                title: Text(item.title, style: context.textTheme.titleSmall),
                onTap: item.onTap,
              );
            },
          ),
        ),
      ),
    );
  }
}
