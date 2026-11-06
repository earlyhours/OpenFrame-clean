<script lang="ts">
  import AppDownloadModal from '$lib/modals/AppDownloadModal.svelte';
  import ObtainiumConfigModal from '$lib/modals/ObtainiumConfigModal.svelte';
  import { Button, modalManager } from '@immich/ui';
  import { mdiCellphoneArrowDownVariant, mdiLinkEdit } from '@mdi/js';
  import { t } from 'svelte-i18n';
</script>

<div class="flex flex-col gap-3">
  <Button
    size="large"
    shape="round"
    color="secondary"
    variant="outline"
    fullWidth
    onclick={() => modalManager.show(AppDownloadModal, {})}
    leadingIcon={mdiCellphoneArrowDownVariant}
  >
    {$t('app_stores')}
  </Button>

  <Button
    size="large"
    shape="round"
    color="secondary"
    variant="outline"
    fullWidth
    onclick={() => modalManager.show(ObtainiumConfigModal, {})}
    leadingIcon={mdiLinkEdit}
  >
    {$t('obtainium_configurator')}
  </Button>
</div>
