<script lang="ts">
  import AuthPageLayout from '$lib/components/layouts/AuthPageLayout.svelte';
  import { goto } from '$app/navigation';
  import { page } from '$app/state';
  import OnboardingBackup from './OnboardingBackup.svelte';
  import OnboardingCard from './OnboardingCard.svelte';
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
      | typeof OnboardingLocale;
    role: OnboardingRole;
    title?: string;
    icon?: string;
  }

  const onboardingSteps: OnboardingStep[] = $derived([
    { name: 'hello', component: OnboardingHello, role: OnboardingRole.USER },
    {
      name: 'theme',
      component: OnboardingTheme,
      role: OnboardingRole.USER,
      title: $t('theme'),
      icon: mdiThemeLightDark,
    },
    {
      name: 'language',
      component: OnboardingLocale,
      role: OnboardingRole.USER,
      title: $t('language'),
      icon: mdiTranslate,
    },
    {
      name: 'server_privacy',
      component: OnboardingServerPrivacy,
      role: OnboardingRole.SERVER,
      title: $t('server_privacy'),
      icon: mdiIncognito,
    },
    {
      name: 'user_privacy',
      component: OnboardingUserPrivacy,
      role: OnboardingRole.USER,
      title: $t('user_privacy'),
      icon: mdiIncognito,
    },
    {
      name: 'storage_template',
      component: OnboardingStorageTemplate,
      role: OnboardingRole.SERVER,
      title: $t('admin.storage_template_settings'),
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
      icon: mdiCellphoneArrowDownVariant,
    },
  ]);

  const index = $derived.by(() => {
    const stepState = page.url.searchParams.get('step');
    const temporaryIndex = onboardingSteps.findIndex((step) => step.name === stepState);
    return temporaryIndex === -1 ? 0 : temporaryIndex;
  });
  let userRole = $derived(
    authManager.user.isAdmin && !serverConfig.isOnboarded ? OnboardingRole.SERVER : OnboardingRole.USER,
  );

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
      await goto(Route.onboarding({ step: onboardingSteps[nextStepIndex].name }));
    }
  };

  const handlePrevious = async () => {
    if (previousStepIndex === -1) {
      return;
    }

    await goto(Route.onboarding({ step: onboardingSteps[previousStepIndex].name }));
  };

  const OnboardingStep = $derived(onboardingSteps[index].component);
  const activeSteps = $derived(onboardingSteps.filter((step) => shouldRunStep(step.role, userRole)));
  const plan = $derived(activeSteps.flatMap(({ title, icon }) => (title && icon ? [{ title, icon }] : [])));
</script>

<AuthPageLayout withHeader={false}>
  <section id="onboarding-page" class="flex w-full">
    <div class="flex w-full flex-col">
      <div class="mb-3 flex items-baseline justify-between gap-4 font-mono text-xs text-muted">
        <span
          >{$t('onboarding_step_of', { values: { current: onboardingProgress + 1, total: onboardingStepCount } })}</span
        >
        {#if onboardingSteps[index].title}
          <span class="truncate">{onboardingSteps[index].title}</span>
        {/if}
      </div>
      <ol class="flex gap-1.5" aria-label={$t('steps')}>
        {#each activeSteps as step, i (step.name)}
          <li class="flex-1">
            <button
              type="button"
              class="block h-1.5 w-full rounded-full transition-colors duration-300 {i <= onboardingProgress
                ? 'bg-primary'
                : 'bg-light-200'} {i < onboardingProgress ? 'cursor-pointer hover:opacity-70' : 'cursor-default'}"
              aria-label={step.title ?? $t('onboarding')}
              aria-current={i === onboardingProgress ? 'step' : undefined}
              disabled={i >= onboardingProgress}
              onclick={() => goto(Route.onboarding({ step: step.name }))}
            ></button>
          </li>
        {/each}
      </ol>
      <div class="m-auto flex w-full place-content-center place-items-center pt-10">
        {#key index}
          <OnboardingCard
            title={onboardingSteps[index].title}
            icon={onboardingSteps[index].icon}
            onNext={handleNextClicked}
            onPrevious={handlePrevious}
            previousTitle={onboardingSteps[previousStepIndex]?.title ??
              (previousStepIndex === -1 ? undefined : $t('back'))}
            nextTitle={onboardingSteps[nextStepIndex]?.title}
          >
            {#if index === 0}
              <OnboardingHello {plan} />
            {:else}
              <OnboardingStep />
            {/if}
          </OnboardingCard>
        {/key}
      </div>
    </div>
  </section>
</AuthPageLayout>
