<script lang="ts">
  import { languageManager } from '$lib/managers/language-manager.svelte';
  import { Button, Icon } from '@immich/ui';
  import { mdiArrowLeft, mdiArrowRight, mdiCheck } from '@mdi/js';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';
  import { fly } from 'svelte/transition';

  interface Props {
    title?: string | undefined;
    icon?: string | undefined;
    children?: Snippet;
    previousTitle?: string | undefined;
    nextTitle?: string | undefined;
    onNext?: () => void | Promise<void>;
    onPrevious?: () => void | Promise<void>;
    onLeave?: () => void;
  }

  let {
    title = undefined,
    icon = undefined,
    children,
    previousTitle,
    nextTitle,
    onLeave,
    onNext,
    onPrevious,
  }: Props = $props();

  let busy = $state(false);

  const navigate = async (action?: () => void | Promise<void>) => {
    if (busy) {
      return;
    }
    busy = true;
    try {
      onLeave?.();
      await action?.();
    } finally {
      busy = false;
    }
  };
</script>

<div id="onboarding-card" class="flex w-full flex-col gap-5 text-dark" in:fly={{ y: 8, duration: 250 }}>
  {#if title || icon}
    <div class="flex items-center gap-3">
      {#if icon}
        <span class="flex size-11 shrink-0 items-center justify-center rounded-xl bg-primary/10 text-primary">
          <Icon {icon} size="24" />
        </span>
      {/if}
      {#if title}
        <h1 class="font-display text-3xl text-dark">{title}</h1>
      {/if}
    </div>
  {/if}
  {@render children?.()}

  <div class="mt-4 flex items-center gap-3 border-t border-light-200 pt-6">
    {#if previousTitle}
      <Button
        shape="semi-round"
        color="secondary"
        variant="ghost"
        leadingIcon={languageManager.rtl ? mdiArrowRight : mdiArrowLeft}
        disabled={busy}
        title={previousTitle}
        onclick={() => navigate(onPrevious)}
      >
        {$t('back')}
      </Button>
    {/if}

    <Button
      class="ms-auto"
      shape="round"
      loading={busy}
      trailingIcon={nextTitle ? (languageManager.rtl ? mdiArrowLeft : mdiArrowRight) : mdiCheck}
      title={nextTitle}
      onclick={() => navigate(onNext)}
    >
      {nextTitle ? $t('continue') : $t('onboarding_finish')}
    </Button>
  </div>
</div>
