<script lang="ts">
  import { getRecentAlbumsQuery } from '$lib/queries/album.query';
  import { queryClient } from '$lib/queries/client';
  import { Route } from '$lib/route';
  import { getAssetMediaUrl } from '$lib/utils';
  import { createQuery } from '@tanstack/svelte-query';

  const query = createQuery(getRecentAlbumsQuery, () => queryClient);
  const albums = $derived(query.data ?? []);
</script>

{#each albums as album (album.id)}
  <a
    href={Route.viewAlbum(album)}
    title={album.albumName}
    class="flex w-full place-items-center justify-between gap-3 ps-9 pe-3 hover:cursor-pointer"
  >
    <div>
      <div
        class="size-6 rounded-md bg-light-200 bg-cover"
        style={album.albumThumbnailAssetId
          ? `background-image:url('${getAssetMediaUrl({ id: album.albumThumbnailAssetId })}')`
          : ''}
      ></div>
    </div>
    <div class="grow truncate text-sm font-medium">
      {album.albumName}
    </div>
  </a>
{/each}
