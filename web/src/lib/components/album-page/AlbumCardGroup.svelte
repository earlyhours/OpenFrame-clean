<script lang="ts">
  import AlbumCard from '$lib/components/album-page/AlbumCard.svelte';
  import Portal from '$lib/elements/Portal.svelte';
  import { Route } from '$lib/route';
  import { getAlbumActions } from '$lib/services/album.service';
  import { albumViewSettings } from '$lib/stores/preferences.store';
  import { type AlbumGroup, isAlbumGroupCollapsed, toggleAlbumGroupCollapsing } from '$lib/utils/album-utils';
  import type { AlbumResponseDto } from '@immich/sdk';
  import { Icon, menuManager, type ActionItem } from '@immich/ui';
  import { mdiChevronRight } from '@mdi/js';
  import { t } from 'svelte-i18n';
  import { flip } from 'svelte/animate';
  import { slide } from 'svelte/transition';

  type Props = {
    albums: AlbumResponseDto[];
    group?: AlbumGroup | undefined;
    showOwner?: boolean;
    showDateRange?: boolean;
    showItemCount?: boolean;
  };

  const {
    albums,
    group = undefined,
    showOwner = false,
    showDateRange = false,
    showItemCount = false,
  }: Props = $props();

  let isCollapsed = $derived(!!group && isAlbumGroupCollapsed($albumViewSettings, group.id));
  let iconRotation = $derived(isCollapsed ? 'rotate-0' : 'rotate-90');
  let contextMenuAnchor: HTMLDivElement | undefined = $state();

  const oncontextmenu = async (event: MouseEvent, items: ActionItem[]) => {
    event.preventDefault();
    contextMenuAnchor?.setAttribute('style', `left: ${event.x}px; top: ${event.y}px;`);
    await menuManager.show({
      target: contextMenuAnchor ?? (event.currentTarget as HTMLElement),
      items,
    });
  };
</script>

<Portal>
  <div bind:this={contextMenuAnchor} class="absolute"></div>
</Portal>

{#if group}
  <div class="grid">
    <button
      type="button"
      onclick={() => toggleAlbumGroupCollapsing(group.id)}
      class="my-2 flex w-full cursor-pointer items-center gap-1 rounded-lg py-2 pe-2 text-start transition-colors duration-150 hover:text-primary"
      aria-expanded={!isCollapsed}
    >
      <Icon icon={mdiChevronRight} size="24" class="transition-transform duration-200 {iconRotation}" />
      <span class="of-section-title">{group.name}</span>
      <span class="ms-1 text-sm text-muted">({$t('albums_count', { values: { count: albums.length } })})</span>
    </button>
    <hr />
  </div>
{/if}

<div class="mt-4">
  {#if !isCollapsed}
    <div class="grid grid-auto-fill-56 gap-4" transition:slide={{ duration: 200 }}>
      {#each albums as album, index (album.id)}
        {@const { Edit, Share, Download, Leave, Delete } = getAlbumActions($t, album)}
        {@const items = [Edit, Share, Download, Leave, Delete]}
        <a
          href={Route.viewAlbum(album)}
          class="h-fit"
          animate:flip={{ duration: 250 }}
          oncontextmenu={(event) => oncontextmenu(event, items)}
        >
          <AlbumCard
            {album}
            {showOwner}
            {showDateRange}
            {showItemCount}
            preload={index < 20}
            contextMenuItems={items}
          />
        </a>
      {/each}
    </div>
  {/if}
</div>
