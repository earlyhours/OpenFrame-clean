<script lang="ts">
  import AppDownloadModal from '$lib/modals/AppDownloadModal.svelte';
  import ObtainiumConfigModal from '$lib/modals/ObtainiumConfigModal.svelte';
  import { Route } from '$lib/route';
  import { Icon, modalManager, Text } from '@immich/ui';
  import {
    mdiCellphoneArrowDownVariant,
    mdiContentDuplicate,
    mdiCrosshairsGps,
    mdiImageSizeSelectLarge,
    mdiLinkEdit,
    mdiStateMachine,
  } from '@mdi/js';
  import { t } from 'svelte-i18n';

  const links = [
    { href: Route.duplicatesUtility(), icon: mdiContentDuplicate, label: $t('review_duplicates') },
    { href: Route.largeFileUtility(), icon: mdiImageSizeSelectLarge, label: $t('review_large_files') },
    { href: Route.geolocationUtility(), icon: mdiCrosshairsGps, label: $t('manage_geolocation') },
    { href: Route.workflows(), icon: mdiStateMachine, label: $t('workflows') },
  ];
</script>

<div class="overflow-hidden rounded-xl border bg-subtle pb-2">
  <Text size="tiny" color="muted" fontWeight="medium" class="px-4 pt-4 pb-2">{$t('organize_your_library')}</Text>

  {#each links as link (link.href)}
    <a
      href={link.href}
      class="flex min-h-14 w-full items-center gap-4 px-4 py-3 text-start text-sm font-medium text-dark transition-colors duration-150 hover:bg-(--of-panel-2)"
    >
      <span><Icon icon={link.icon} class="text-primary" size="24" /> </span>
      {link.label}
    </a>
  {/each}
</div>
<div class="h-6"></div>
<div class="overflow-hidden rounded-xl border bg-subtle pb-2">
  <Text size="tiny" color="muted" fontWeight="medium" class="px-4 pt-4 pb-2">{$t('download')}</Text>

  <button
    type="button"
    onclick={() => modalManager.show(ObtainiumConfigModal, {})}
    class="flex min-h-14 w-full items-center gap-4 px-4 py-3 text-start text-sm font-medium text-dark transition-colors duration-150 hover:bg-(--of-panel-2)"
  >
    <span>
      <Icon icon={mdiLinkEdit} class="text-immich-primary dark:text-immich-dark-primary" size="24" />
    </span>
    {$t('obtainium_configurator')}
  </button>
  <button
    type="button"
    onclick={() => modalManager.show(AppDownloadModal, {})}
    class="flex min-h-14 w-full items-center gap-4 px-4 py-3 text-start text-sm font-medium text-dark transition-colors duration-150 hover:bg-(--of-panel-2)"
  >
    <span>
      <Icon icon={mdiCellphoneArrowDownVariant} class="text-immich-primary dark:text-immich-dark-primary" size="24" />
    </span>
    {$t('app_download_links')}
  </button>
</div>
