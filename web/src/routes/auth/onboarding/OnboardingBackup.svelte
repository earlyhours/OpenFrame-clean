<script lang="ts">
  import FormatMessage from '$lib/elements/FormatMessage.svelte';
  import { Link } from '@immich/ui';
  import type { Translations } from 'svelte-i18n';

  const messageKeys = [
    'admin.backup_onboarding_3_description',
    'admin.backup_onboarding_2_description',
    'admin.backup_onboarding_1_description',
  ];
</script>

<p class="text-base/6 text-muted">
  <FormatMessage key="admin.backup_onboarding_description">
    {#snippet children({ message })}
      <Link href="https://www.backblaze.com/blog/the-3-2-1-backup-strategy/">
        {message}
      </Link>
    {/snippet}
  </FormatMessage>
</p>

<section class="flex flex-col gap-4">
  <h2 class="of-eyebrow"><FormatMessage key="admin.backup_onboarding_parts_title" /></h2>

  <ol class="parts">
    {#each messageKeys as keyString, index (index)}
      <li>
        <span class="count font-display">{3 - index}</span>
        <span class="text-sm/6">
          <FormatMessage key={keyString as Translations} />
        </span>
      </li>
    {/each}
  </ol>
</section>

<p class="text-sm/6 text-muted">
  <FormatMessage key="admin.backup_onboarding_footer">
    {#snippet children({ message })}
      <Link href="https://docs.immich.app/administration/backup-and-restore/">{message}</Link>
    {/snippet}
  </FormatMessage>
</p>

<style>
  .parts {
    display: grid;
    border: 1px solid var(--of-line);
    border-radius: 16px;
    background: var(--of-bg);
  }

  .parts li {
    display: flex;
    align-items: flex-start;
    gap: 16px;
    padding: 16px;
  }

  .parts li + li {
    border-top: 1px solid var(--of-line);
  }

  .count {
    display: flex;
    width: 32px;
    height: 32px;
    flex: none;
    align-items: center;
    justify-content: center;
    border-radius: 999px;
    background: var(--of-accent-soft);
    color: var(--of-accent);
    font-size: 16px;
  }
</style>
