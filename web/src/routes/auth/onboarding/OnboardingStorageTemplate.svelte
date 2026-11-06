<script module lang="ts">
  let visited = false;

  const isFirstVisit = () => {
    const firstVisit = !visited;
    visited = true;
    return firstVisit;
  };
</script>

<script lang="ts">
  import StorageTemplateSettings from '$lib/components/admin-settings/StorageTemplateSettings.svelte';
  import { authManager } from '$lib/managers/auth-manager.svelte';

  const preselectDate = isFirstVisit();
</script>

<div class="flex flex-col gap-2">
  {#if authManager.authenticated}
    <StorageTemplateSettings minified duration={0} saveOnClose {preselectDate} />
  {/if}
</div>
