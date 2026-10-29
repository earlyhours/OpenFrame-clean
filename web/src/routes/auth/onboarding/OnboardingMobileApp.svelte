<script lang="ts">
  import { page } from '$app/state';
  import Qrcode from '$lib/components/shared-components/Qrcode.svelte';
  import AppDownloadModal from '$lib/modals/AppDownloadModal.svelte';
  import ObtainiumConfigModal from '$lib/modals/ObtainiumConfigModal.svelte';
  import { Button, HStack, modalManager } from '@immich/ui';
  import { mdiCellphoneArrowDownVariant, mdiLinkEdit } from '@mdi/js';
  import { t } from 'svelte-i18n';

  const serverUrl = $derived(page.url.origin);
  const isLocalhost = $derived(['localhost', '127.0.0.1', '[::1]'].includes(page.url.hostname));
</script>

<div class="flex flex-col items-center gap-4 rounded-xl border border-light-200 p-5 text-center">
  <p class="font-display text-xl">{$t('openframe_phone_setup')}</p>
  {#if isLocalhost}
    <p role="status">{$t('openframe_phone_localhost')}</p>
  {:else}
    <Qrcode value={serverUrl} width={200} />
    <p>{$t('openframe_phone_scan')}</p>
  {/if}
  <code class="max-w-full break-all select-all">{serverUrl}</code>
  <p class="text-sm text-muted">{$t('openframe_phone_login')}</p>
</div>

<p>{$t('mobile_app_download_onboarding_note')}</p>

<HStack>
  <Button
    size="medium"
    shape="semi-round"
    fullWidth
    onclick={() => modalManager.show(AppDownloadModal, {})}
    leadingIcon={mdiCellphoneArrowDownVariant}
  >
    {$t('app_stores')}
  </Button>

  <Button
    size="medium"
    shape="semi-round"
    fullWidth
    onclick={() => modalManager.show(ObtainiumConfigModal, {})}
    leadingIcon={mdiLinkEdit}
  >
    {$t('obtainium_configurator')}
  </Button>
</HStack>
