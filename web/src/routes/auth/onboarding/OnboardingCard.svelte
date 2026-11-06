<script lang="ts">
  import { openFrameLogos } from '$lib/branding';
  import { languageManager } from '$lib/managers/language-manager.svelte';
  import { Button, Icon } from '@immich/ui';
  import { mdiArrowLeft, mdiArrowRight, mdiCheck } from '@mdi/js';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';

  interface Props {
    /** Changing the key plays the step transition and remounts the content. */
    stepKey: string | number;
    /** `1` slides in from the end edge, `-1` from the start edge. */
    direction?: 1 | -1;
    title?: string;
    description?: string;
    icon?: string;
    logo?: boolean;
    children?: Snippet;
    previousTitle?: string | undefined;
    nextTitle?: string | undefined;
    onNext?: () => void | Promise<void>;
    onPrevious?: () => void | Promise<void>;
    onLeave?: () => void;
  }

  let {
    stepKey,
    direction = 1,
    title,
    description,
    icon,
    logo = false,
    children,
    previousTitle,
    nextTitle,
    onLeave,
    onNext,
    onPrevious,
  }: Props = $props();

  let busy = $state(false);

  const rtl = $derived(languageManager.rtl);

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

<div id="onboarding-card" class="card">
  {#key stepKey}
    <div class="step" style="--dx: {direction * (rtl ? -1 : 1) * 16}px">
      {#if title || logo}
        <header class="heading">
          {#if logo}
            <img src={openFrameLogos.icon} alt="" width="56" height="56" />
          {:else if icon}
            <span class="badge"><Icon {icon} size="24" /></span>
          {/if}
          {#if title}
            <h1 class="font-display">{title}</h1>
          {/if}
          {#if description}
            <p>{description}</p>
          {/if}
        </header>
      {/if}

      <div class="body">
        {@render children?.()}
      </div>
    </div>
  {/key}

  <footer class="actions">
    {#if previousTitle}
      <!-- Pulled toward the edge so the ghost button's arrow lines up with the content above. -->
      <Button
        class="-ms-6"
        shape="round"
        color="secondary"
        variant="ghost"
        size="large"
        leadingIcon={rtl ? mdiArrowRight : mdiArrowLeft}
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
      size="large"
      loading={busy}
      trailingIcon={nextTitle ? (rtl ? mdiArrowLeft : mdiArrowRight) : mdiCheck}
      title={nextTitle}
      onclick={() => navigate(onNext)}
    >
      {nextTitle ? $t('continue') : $t('onboarding_finish')}
    </Button>
  </footer>
</div>

<style>
  /* The surrounding AuthShell already draws the surface, so the step only lays out its content. */
  .card {
    min-width: 0;
  }

  .step {
    animation: step-in 280ms var(--of-ease) both;
  }

  .heading {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 8px;
    margin-bottom: 32px;
  }

  .heading img {
    margin-bottom: 8px;
  }

  .badge {
    display: flex;
    width: 48px;
    height: 48px;
    align-items: center;
    justify-content: center;
    margin-bottom: 8px;
    border-radius: 16px;
    background: var(--of-accent-soft);
    color: var(--of-accent);
  }

  h1 {
    font-size: 32px;
    line-height: 40px;
    letter-spacing: -0.5px;
    text-wrap: balance;
  }

  .heading p {
    font-size: 16px;
    line-height: 24px;
    color: var(--of-mute);
    text-wrap: pretty;
  }

  .body {
    display: flex;
    flex-direction: column;
    gap: 24px;
  }

  .actions {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-top: 32px;
    padding-top: 24px;
    border-top: 1px solid var(--of-line);
  }

  .actions :global(button) {
    flex-shrink: 0;
    white-space: nowrap;
  }

  @media (min-width: 640px) {
    h1 {
      font-size: 40px;
      line-height: 48px;
    }

    .actions {
      margin-top: 40px;
    }
  }

  @keyframes step-in {
    from {
      opacity: 0;
      transform: translateX(var(--dx));
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .step {
      animation: none;
    }
  }
</style>
