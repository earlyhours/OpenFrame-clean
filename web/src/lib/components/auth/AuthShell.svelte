<script lang="ts">
  import { APP_NAME, openFrameLogos } from '$lib/branding';
  import { Icon } from '@immich/ui';
  import type { Snippet } from 'svelte';

  interface Props {
    title?: string;
    subtitle?: string;
    icon?: string;
    iconTone?: 'default' | 'success' | 'danger';
    /** `narrow` suits forms, `wide` suits the setup flow. */
    width?: 'narrow' | 'wide';
    /** Rendered above the card, e.g. setup progress. */
    top?: Snippet;
    children?: Snippet;
    /** Rendered below the card, outside the surface. */
    footer?: Snippet;
  }

  let { title, subtitle, icon, iconTone = 'default', width = 'narrow', top, children, footer }: Props = $props();
</script>

<main class="auth-shell">
  <div class="auth-glow" aria-hidden="true"></div>

  <div class="auth-column" data-width={width}>
    <div class="auth-brand">
      <img src={openFrameLogos.icon} alt="" width="32" height="32" />
      <span class="font-display">{APP_NAME}</span>
    </div>

    {@render top?.()}

    <div class="auth-card">
      {#if title}
        <header class="auth-heading">
          {#if icon}
            <span class="auth-icon" data-tone={iconTone}><Icon {icon} size="24" /></span>
          {/if}
          <h1 class="font-display">{title}</h1>
          {#if subtitle}
            <p>{subtitle}</p>
          {/if}
        </header>
      {/if}
      {@render children?.()}
    </div>

    {@render footer?.()}
  </div>
</main>

<style>
  .auth-shell {
    position: relative;
    isolation: isolate;
    display: flex;
    min-height: 100dvh;
    width: 100%;
    justify-content: center;
    padding: 32px 16px 48px;
    background: var(--of-bg);
    color: var(--of-ink);
  }

  .auth-glow {
    position: absolute;
    inset: 0 0 auto;
    height: 480px;
    z-index: -1;
    pointer-events: none;
    background: radial-gradient(56% 100% at 50% 0%, var(--of-accent-soft), transparent 72%);
  }

  .auth-column {
    display: flex;
    width: 100%;
    max-width: 440px;
    flex-direction: column;
    gap: 24px;
    margin-block: auto;
    animation: auth-arrive 320ms var(--of-ease) both;
  }

  .auth-column[data-width='wide'] {
    max-width: 640px;
    margin-block: 0 auto;
  }

  .auth-brand {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    font-size: 20px;
    line-height: 32px;
    letter-spacing: -0.5px;
  }

  .auth-card {
    min-width: 0;
    padding: 32px 24px;
    border: 1px solid var(--of-line);
    border-radius: 24px;
    background: var(--of-panel);
    box-shadow: 0 24px 64px -32px rgb(0 0 0 / 28%);
  }

  .auth-heading {
    display: flex;
    flex-direction: column;
    gap: 8px;
    margin-bottom: 32px;
  }

  .auth-icon {
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

  .auth-icon[data-tone='success'] {
    background: color-mix(in srgb, var(--immich-ui-success-500, #46c97d) 16%, transparent);
    color: var(--immich-ui-success-500, #46c97d);
  }

  .auth-icon[data-tone='danger'] {
    background: color-mix(in srgb, var(--immich-ui-danger-500, #ff6a4d) 16%, transparent);
    color: var(--immich-ui-danger-500, #ff6a4d);
  }

  .auth-heading h1 {
    font-size: 32px;
    line-height: 40px;
    letter-spacing: -0.5px;
    text-wrap: balance;
  }

  .auth-heading p {
    font-size: 16px;
    line-height: 24px;
    color: var(--of-mute);
    text-wrap: pretty;
  }

  .auth-card :global(label) {
    font-size: 14px;
    font-weight: 500;
    color: var(--of-ink-2);
  }

  .auth-card :global([role='alert']) {
    border-radius: 12px;
  }

  @media (min-width: 640px) {
    .auth-shell {
      padding-block: 64px 64px;
    }

    .auth-card {
      padding: 40px;
    }

    .auth-heading h1 {
      font-size: 40px;
      line-height: 48px;
    }
  }

  @keyframes auth-arrive {
    from {
      opacity: 0;
      transform: translateY(8px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .auth-column {
      animation: none;
    }
  }
</style>
