<script lang="ts">
  import { APP_NAME, openFrameLogos } from '$lib/branding';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';

  interface Props {
    title?: string;
    children?: Snippet;
    withHeader?: boolean;
    withBackdrop?: boolean;
  }

  let { title, children, withHeader = true, withBackdrop = true }: Props = $props();
</script>

<section class="auth-page relative isolate flex min-h-dvh w-full items-center justify-center px-6 py-16">
  {#if withBackdrop}
    <div class="auth-glass" aria-hidden="true">
      <div class="auth-glow"></div>
      <div class="auth-ribs"></div>
      <div class="auth-fade"></div>
    </div>
  {/if}

  <div class="auth-layout" class:with-header={withHeader}>
    {#if withHeader}
      <div class="auth-intro">
        <img src={openFrameLogos.icon} alt="" width="44" height="44" class="mb-10" />
        <p class="of-eyebrow mb-5">{$t('photos_and_videos')}</p>
        <p class="auth-wordmark font-display">{APP_NAME}</p>
        <div class="mt-8 h-px w-16 bg-primary"></div>
        <p class="mt-6 font-mono text-xs tracking-widest text-muted uppercase">{$t('welcome_to_immich')}</p>
      </div>
    {/if}

    <div class="auth-panel">
      {#if withHeader}
        <header class="mb-9">
          <p class="of-eyebrow mb-4">{APP_NAME} / {$t('library')}</p>
          <h1 class="font-display text-4xl text-dark">{title}</h1>
        </header>
      {/if}
      {@render children?.()}
    </div>
  </div>
</section>

<style>
  .auth-page {
    background: var(--of-bg);
  }

  .auth-glass {
    position: absolute;
    inset: 0 0 auto;
    height: 85%;
    min-height: 480px;
    overflow: hidden;
    pointer-events: none;
    z-index: -1;
  }

  .auth-glow {
    position: absolute;
    inset: -14%;
    background:
      radial-gradient(42% 60% at 50% 0%, #ff8a3d 0%, transparent 70%),
      radial-gradient(40% 55% at 18% 10%, #ef5a00 0%, transparent 72%),
      radial-gradient(38% 50% at 84% 14%, #d2402e 0%, transparent 70%),
      linear-gradient(180deg, #7a2c0c 0%, #3a1a2c 45%, var(--of-bg) 85%);
    opacity: 0.6;
  }

  .auth-ribs {
    position: absolute;
    inset: 0;
    background: repeating-linear-gradient(
      90deg,
      #00000059 0,
      #00000014 5px,
      #ffffff10 12px,
      #ffffff1c 16px,
      #00000010 22px,
      #00000066 28px
    );
  }

  .auth-fade {
    position: absolute;
    inset: 0;
    background: linear-gradient(
      180deg,
      transparent 0%,
      color-mix(in srgb, var(--of-bg) 45%, transparent) 35%,
      var(--of-bg) 95%
    );
  }

  .auth-layout {
    width: min(100%, 700px);
    animation: arrive 600ms var(--of-ease) both;
  }

  .with-header {
    width: min(100%, 1040px);
    display: grid;
    grid-template-columns: 1.15fr 1fr;
    align-items: center;
    gap: 80px;
  }

  .auth-wordmark {
    color: var(--of-ink);
    font-size: clamp(40px, 5vw, 64px);
    letter-spacing: -2px;
    line-height: 1.2;
  }

  .auth-panel {
    min-width: 0;
    padding: 36px;
    border: 1px solid var(--of-line-2);
    border-radius: 12px;
    background: var(--of-panel);
  }

  .auth-panel :global(label) {
    font-family: var(--font-mono);
    font-size: 11px;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    color: var(--of-mute);
  }

  .auth-panel :global([role='alert']) {
    border-radius: 8px;
  }

  .auth-panel :global(button[type='submit']) {
    min-height: 48px;
    border-radius: 999px;
    box-shadow: 0 8px 24px rgb(239 90 0 / 35%);
  }

  @keyframes arrive {
    from {
      opacity: 0;
      transform: translateY(8px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @media (max-width: 767px) {
    .with-header {
      max-width: 460px;
      grid-template-columns: 1fr;
      gap: 36px;
    }

    .auth-intro :global(img),
    .auth-intro > div,
    .auth-intro > p:last-child {
      display: none;
    }

    .auth-panel {
      padding: 28px;
    }
  }
</style>
