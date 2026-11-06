<script lang="ts">
  import empty2Url from '$lib/assets/empty-2.svg';
  import Albums from '$lib/components/album-page/AlbumsList.svelte';
  import UserPageLayout from '$lib/components/layouts/UserPageLayout.svelte';
  import EmptyPlaceholder from '$lib/components/shared-components/EmptyPlaceholder.svelte';
  import UserAvatar from '$lib/components/shared-components/UserAvatar.svelte';
  import { getAllAlbumsQuery } from '$lib/queries/album.query';
  import { createPreloadedQuery } from '$lib/queries/client';
  import { Route } from '$lib/route';
  import { getAlbumsActions } from '$lib/services/album.service';
  import { getSharedLinksActions } from '$lib/services/shared-link.service';
  import {
    AlbumFilter,
    AlbumGroupBy,
    AlbumSortBy,
    AlbumViewMode,
    SortOrder,
    type AlbumViewSettings,
  } from '$lib/stores/preferences.store';
  import { t } from 'svelte-i18n';
  import type { PageData } from './$types';

  type Props = {
    data: PageData;
  };

  let { data }: Props = $props();

  const query = createPreloadedQuery(() => getAllAlbumsQuery({ isShared: true }));
  const sharedAlbums = $derived(query.data);

  const settings: AlbumViewSettings = {
    view: AlbumViewMode.Cover,
    filter: AlbumFilter.Shared,
    groupBy: AlbumGroupBy.None,
    groupOrder: SortOrder.Desc,
    sortBy: AlbumSortBy.MostRecentPhoto,
    sortOrder: SortOrder.Desc,
    collapsedGroups: {},
  };

  const { Create: CreateAlbum } = $derived(getAlbumsActions($t));
  const { ViewAll: ViewSharedLinks } = $derived(getSharedLinksActions($t));
</script>

<UserPageLayout title={data.meta.title} actions={[CreateAlbum, ViewSharedLinks]}>
  <div class="flex flex-col">
    {#if data.partners.length > 0}
      <section class="mb-10">
        <h2 class="of-section-title mb-4">{$t('partners')}</h2>

        <div class="flex flex-row flex-wrap gap-4">
          {#each data.partners as partner (partner.id)}
            <a
              href={Route.viewPartner(partner)}
              class="flex items-center gap-4 rounded-xl border bg-subtle px-5 py-4 transition-colors duration-150 hover:border-(--of-line-2)"
            >
              <UserAvatar user={partner} size="lg" />
              <div class="text-start">
                <p class="font-medium text-dark">
                  {partner.name}
                </p>
                <p class="text-sm text-muted">
                  {partner.email}
                </p>
              </div>
            </a>
          {/each}
        </div>
      </section>
    {/if}

    <section class="mb-6">
      <h2 class="of-section-title mb-4">{$t('albums')}</h2>

      <div>
        <!-- Shared Album List -->
        <Albums {sharedAlbums} userSettings={settings} showOwner>
          <!-- Empty List -->
          {#snippet empty()}
            <EmptyPlaceholder text={$t('no_shared_albums_message')} src={empty2Url} class="mx-auto mt-10" />
          {/snippet}
        </Albums>
      </div>
    </section>
  </div>
</UserPageLayout>
