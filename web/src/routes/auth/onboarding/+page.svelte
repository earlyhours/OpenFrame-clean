<script lang="ts">
  import AuthShell from '$lib/components/auth/AuthShell.svelte';
  import { goto } from '$app/navigation';
  import { page } from '$app/state';
  import OnboardingBackup from './OnboardingBackup.svelte';
  import OnboardingCard from './OnboardingCard.svelte';
  import OnboardingConnect from './OnboardingConnect.svelte';
  import OnboardingHello from './OnboardingHello.svelte';
  import OnboardingLocale from './OnboardingLanguage.svelte';
  import OnboardingMobileApp from './OnboardingMobileApp.svelte';
  import OnboardingServerPrivacy from './OnboardingServerPrivacy.svelte';
  import OnboardingStorageTemplate from './OnboardingStorageTemplate.svelte';
  import OnboardingTheme from './OnboardingTheme.svelte';
  import OnboardingUserPrivacy from './OnboardingUserPrivacy.svelte';
  import { authManager } from '$lib/managers/auth-manager.svelte';
  import { Route } from '$lib/route';
  import { OnboardingRole } from '$lib/types';
  import { setUserOnboarding, updateAdminOnboarding } from '@immich/sdk';
  import {
    mdiCellphoneArrowDownVariant,
    mdiCloudCheckOutline,
    mdiHarddisk,
    mdiIncognito,
    mdiQrcodeScan,
    mdiThemeLightDark,
    mdiTranslate,
  } from '@mdi/js';
  import { t } from 'svelte-i18n';
  import { createPreloadedQuery, queryClient } from '$lib/queries/client';
  import { getServerConfigQuery } from '$lib/queries/server.query';

  const query = createPreloadedQuery(getServerConfigQuery);
  const serverConfig = $derived(query.data);

  interface OnboardingStep {
    name: string;
    component:
      | typeof OnboardingHello
      | typeof OnboardingTheme
      | typeof OnboardingStorageTemplate
      | typeof OnboardingServerPrivacy
      | typeof OnboardingUserPrivacy
      | typeof OnboardingMobileApp
      | typeof OnboardingConnect
      | typeof OnboardingLocale;
    role: OnboardingRole;
    /** Short name, shown in the plan and used as the page heading unless `heading` is set. */
    title?: string;
    heading?: string;
    description?: string;
    icon?: string;
    logo?: boolean;
  }

  let userRole = $derived(
    authManager.user.isAdmin && !serverConfig.isOnboarded ? OnboardingRole.SERVER : OnboardingRole.USER,
  );

  const onboardingSteps: OnboardingStep[] = $derived([
    {
      name: 'hello',
      component: OnboardingHello,
      role: OnboardingRole.USER,
      heading: $t('onboarding_welcome_user', { values: { user: authManager.user.name } }),
      description:
        userRole === OnboardingRole.SERVER
          ? $t('onboarding_server_welcome_description')
          : $t('onboarding_user_welcome_description'),
      logo: true,
    },
    {
      name: 'theme',
      component: OnboardingTheme,
      role: OnboardingRole.USER,
      title: $t('theme'),
      description: $t('onboarding_theme_description'),
      icon: mdiThemeLightDark,
    },
    {
      name: 'language',
      component: OnboardingLocale,
      role: OnboardingRole.USER,
      title: $t('language'),
      description: $t('onboarding_locale_description'),
      icon: mdiTranslate,
    },
    {
      name: 'server_privacy',
      component: OnboardingServerPrivacy,
      role: OnboardingRole.SERVER,
      title: $t('server_privacy'),
      description: $t('onboarding_privacy_description'),
      icon: mdiIncognito,
    },
    {
      name: 'user_privacy',
      component: OnboardingUserPrivacy,
      role: OnboardingRole.USER,
      title: $t('user_privacy'),
      description: $t('onboarding_privacy_description'),
      icon: mdiIncognito,
    },
    {
      name: 'storage_template',
      component: OnboardingStorageTemplate,
      role: OnboardingRole.SERVER,
      title: $t('admin.storage_template_settings'),
      description: $t('admin.storage_template_onboarding_description_v3'),
      icon: mdiHarddisk,
    },
    {
      name: 'backup',
      component: OnboardingBackup,
      role: OnboardingRole.SERVER,
      title: $t('admin.backup_onboarding_title'),
      icon: mdiCloudCheckOutline,
    },
    {
      name: 'mobile_app',
      component: OnboardingMobileApp,
      role: OnboardingRole.USER,
      title: $t('mobile_app'),
      description: $t('mobile_app_download_onboarding_note'),
      icon: mdiCellphoneArrowDownVariant,
    },
    {
      name: 'connect_mobile',
      component: OnboardingConnect,
      role: OnboardingRole.USER,
      title: $t('connect_phone_title'),
      description: $t('connect_phone_description'),
      icon: mdiQrcodeScan,
    },
  ]);

  const index = $derived.by(() => {
    const stepState = page.url.searchParams.get('step');
    const temporaryIndex = onboardingSteps.findIndex((step) => step.name === stepState);
    return temporaryIndex === -1 ? 0 : temporaryIndex;
  });

  let onboardingStepCount = $derived(onboardingSteps.filter((step) => shouldRunStep(step.role, userRole)).length);
  let onboardingProgress = $derived(
    onboardingSteps.filter((step, i) => shouldRunStep(step.role, userRole) && i <= index).length - 1,
  );

  const shouldRunStep = (stepRole: OnboardingRole, userRole: OnboardingRole) => {
    return (
      stepRole === OnboardingRole.USER ||
      (stepRole === OnboardingRole.SERVER && userRole === OnboardingRole.SERVER && !serverConfig.isOnboarded)
    );
  };

  const previousStepIndex = $derived(
    onboardingSteps.findLastIndex((step, i) => shouldRunStep(step.role, userRole) && i < index),
  );

  const nextStepIndex = $derived(
    onboardingSteps.findIndex((step, i) => shouldRunStep(step.role, userRole) && i > index),
  );

  let direction = $state<1 | -1>(1);

  const goToStep = async (name: string, nextDirection: 1 | -1) => {
    direction = nextDirection;
    await goto(Route.onboarding({ step: name }));
  };

  const handleNextClicked = async () => {
    if (nextStepIndex === -1) {
      if (authManager.user.isAdmin) {
        await updateAdminOnboarding({ adminOnboardingUpdateDto: { isOnboarded: true } });
        await queryClient.invalidateQueries({ queryKey: getServerConfigQuery().queryKey });
      }

      await setUserOnboarding({
        onboardingDto: { isOnboarded: true },
      });

      await goto(Route.photos());
    } else {
      await goToStep(onboardingSteps[nextStepIndex].name, 1);
    }
  };

  const handlePrevious = async () => {
    if (previousStepIndex === -1) {
      return;
    }

    await goToStep(onboardingSteps[previousStepIndex].name, -1);
  };

  const currentStep = $derived(onboardingSteps[index]);
  const OnboardingStep = $derived(currentStep.component);
  const activeSteps = $derived(onboardingSteps.filter((step) => shouldRunStep(step.role, userRole)));
  const plan = $derived(activeSteps.flatMap(({ title, icon }) => (title && icon ? [{ title, icon }] : [])));
</script>

<AuthShell width="wide">
  {#snippet top()}
    <nav id="onboarding-page" class="progress" aria-label={$t('steps')}>
      <div class="flex items-baseline justify-between gap-4 font-mono text-xs text-muted">
        <span
          >{$t('onboarding_step_of', { values: { current: onboardingProgress + 1, total: onboardingStepCount } })}</span
        >
        {#if currentStep.title}
          <span class="truncate">{currentStep.title}</span>
        {/if}
      </div>
      <ol class="flex gap-2">
        {#each activeSteps as step, i (step.name)}
          <li class="flex-1">
            <button
              type="button"
              class="segment {i <= onboardingProgress ? 'done' : ''}"
              aria-label={step.title ?? $t('onboarding')}
              aria-current={i === onboardingProgress ? 'step' : undefined}
              disabled={i >= onboardingProgress}
              onclick={() => goToStep(step.name, -1)}
            ></button>
          </li>
        {/each}
      </ol>
    </nav>
  {/snippet}

  <OnboardingCard
    stepKey={index}
    {direction}
    title={currentStep.heading ?? currentStep.title}
    description={currentStep.description}
    icon={currentStep.icon}
    logo={currentStep.logo}
    onNext={handleNextClicked}
    onPrevious={handlePrevious}
    previousTitle={onboardingSteps[previousStepIndex]?.title ?? (previousStepIndex === -1 ? undefined : $t('back'))}
    nextTitle={onboardingSteps[nextStepIndex]?.title}
  >
    {#if index === 0}
      <OnboardingHello {plan} />
    {:else}
      <OnboardingStep />
    {/if}
  </OnboardingCard>
</AuthShell>

<style>
  .progress {
    display: flex;
    flex-direction: column;
    gap: 12px;
  }

  .segment {
    display: block;
    width: 100%;
    height: 4px;
    border-radius: 999px;
    background: var(--of-line-2);
    transition:
      background-color 240ms var(--of-ease),
      opacity 160ms;
  }

  .segment.done {
    background: var(--of-accent);
  }

  .segment:not(:disabled):hover {
    opacity: 0.7;
  }

  .segment:disabled {
    cursor: default;
  }

  .segment:focus-visible {
    outline: 2px solid var(--of-accent);
    outline-offset: 4px;
  }

  @media (prefers-reduced-motion: reduce) {
    .segment {
      transition: none;
    }
  }
</style>
