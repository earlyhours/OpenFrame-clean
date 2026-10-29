<script lang="ts">
  import { openFrameLogos } from '$lib/branding';
  import { authManager } from '$lib/managers/auth-manager.svelte';
  import { OnboardingRole } from '$lib/types';
  import { Icon } from '@immich/ui';
  import { t } from 'svelte-i18n';
  import { createPreloadedQuery } from '$lib/queries/client';
  import { getServerConfigQuery } from '$lib/queries/server.query';

  interface Props {
    plan?: { title: string; icon: string }[];
  }

  let { plan = [] }: Props = $props();

  const query = createPreloadedQuery(getServerConfigQuery);
  const serverConfig = $derived(query.data);

  let userRole = $derived(
    authManager.user.isAdmin && !serverConfig.isOnboarded ? OnboardingRole.SERVER : OnboardingRole.USER,
  );
</script>

<div class="flex flex-col gap-6">
  <img src={openFrameLogos.icon} alt="" width="56" height="56" />
  <div class="flex flex-col gap-3">
    <h1 class="font-display text-4xl text-dark">
      {$t('onboarding_welcome_user', { values: { user: authManager.user.name } })}
    </h1>
    <p class="text-lg/relaxed text-muted">
      {userRole === OnboardingRole.SERVER
        ? $t('onboarding_server_welcome_description')
        : $t('onboarding_user_welcome_description')}
    </p>
  </div>

  {#if plan.length > 0}
    <div class="rounded-xl border border-light-200 p-5">
      <p class="mb-4 font-mono text-xs tracking-widest text-muted uppercase">{$t('onboarding_plan_title')}</p>
      <ol class="grid gap-x-6 gap-y-3 sm:grid-cols-2">
        {#each plan as { title, icon }, i (title)}
          <li class="flex items-center gap-3 text-sm">
            <span class="w-5 font-mono text-xs text-muted">{String(i + 1).padStart(2, '0')}</span>
            <Icon {icon} size="18" class="shrink-0 text-primary" />
            <span>{title}</span>
          </li>
        {/each}
      </ol>
      <p class="mt-5 text-sm text-muted">{$t('onboarding_time_estimate')}</p>
    </div>
  {/if}
</div>
