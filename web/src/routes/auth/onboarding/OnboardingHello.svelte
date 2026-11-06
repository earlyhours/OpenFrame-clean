<script lang="ts">
  import { Icon } from '@immich/ui';
  import { t } from 'svelte-i18n';

  interface Props {
    plan?: { title: string; icon: string }[];
  }

  let { plan = [] }: Props = $props();
</script>

{#if plan.length > 0}
  <section class="flex flex-col gap-4">
    <p class="of-eyebrow">{$t('onboarding_plan_title')}</p>
    <ol class="plan">
      {#each plan as { title, icon }, i (title)}
        <li>
          <span class="w-6 font-mono text-xs text-muted">{String(i + 1).padStart(2, '0')}</span>
          <Icon {icon} size="20" class="shrink-0 text-primary" />
          <span class="min-w-0 truncate">{title}</span>
        </li>
      {/each}
    </ol>
    <p class="text-sm/6 text-muted">{$t('onboarding_time_estimate')}</p>
  </section>
{/if}

<style>
  .plan {
    display: grid;
    border: 1px solid var(--of-line);
    border-radius: 16px;
    background: var(--of-bg);
  }

  .plan li {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 12px 16px;
    font-size: 14px;
    line-height: 24px;
  }

  .plan li + li {
    border-top: 1px solid var(--of-line);
  }
</style>
