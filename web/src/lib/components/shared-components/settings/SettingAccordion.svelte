<script lang="ts">
  import { accordionManager } from '$lib/managers/accordion-manager.svelte';
  import { Icon } from '@immich/ui';
  import { onDestroy, type Snippet } from 'svelte';
  import { slide } from 'svelte/transition';

  interface Props {
    title: string;
    subtitle?: string;
    key: string;
    isOpen?: boolean;
    autoScrollTo?: boolean;
    icon?: string;
    subtitleSnippet?: Snippet;
    children?: Snippet;
  }

  let {
    title,
    subtitle = '',
    key,
    isOpen = $bindable(false),
    autoScrollTo = false,
    icon = '',
    subtitleSnippet,
    children,
  }: Props = $props();

  let accordionElement: HTMLDivElement | undefined = $state();

  $effect(() => {
    isOpen = accordionManager.isOpen(key);
  });

  const toggleOpen = () => {
    if (isOpen) {
      accordionManager.close(key);
    } else {
      accordionManager.open(key);

      if (autoScrollTo) {
        setTimeout(() => {
          accordionElement?.scrollIntoView({
            behavior: 'smooth',
            block: 'start',
          });
        }, 200);
      }
    }
  };

  onDestroy(() => {
    accordionManager.close(key);
  });
</script>

<div
  class="mt-4 overflow-hidden rounded-xl border bg-subtle transition-colors duration-200 {isOpen
    ? 'border-(--of-line-2)'
    : ''}"
  bind:this={accordionElement}
>
  <button
    type="button"
    aria-expanded={isOpen}
    onclick={toggleOpen}
    class="flex min-h-18 w-full place-items-center justify-between gap-4 px-5 py-4 text-start transition-colors duration-150 ease-out hover:bg-(--of-panel-2)"
  >
    <div class="flex min-w-0 place-items-center gap-4">
      {#if icon}
        <div
          class="flex size-10 shrink-0 place-content-center place-items-center rounded-[10px] bg-(--of-panel-2) transition-colors duration-200 {isOpen
            ? 'text-primary'
            : 'text-muted'}"
        >
          <Icon {icon} size="22" aria-hidden />
        </div>
      {/if}

      <div class="min-w-0">
        <h2 class="text-base/6 font-semibold text-dark">
          {title}
        </h2>

        {#if subtitleSnippet}{@render subtitleSnippet()}{:else if subtitle}
          <p class="mt-0.5 text-sm/5 text-muted">{subtitle}</p>
        {/if}
      </div>
    </div>

    <svg
      class="shrink-0 text-muted"
      width="20"
      height="20"
      fill="none"
      stroke-linecap="round"
      stroke-linejoin="round"
      stroke-width="2"
      viewBox="0 0 24 24"
      stroke="currentColor"
      aria-hidden="true"
    >
      <path d="M19 9l-7 7-7-7" />
    </svg>
  </button>

  {#if isOpen}
    <ul transition:slide={{ duration: 200 }} class="border-t px-5 pt-5 pb-6 md:px-6">
      {@render children?.()}
    </ul>
  {/if}
</div>

<style>
  svg {
    transition: transform 200ms var(--of-ease);
  }

  [aria-expanded='true'] svg {
    transform: rotate(0.5turn);
  }
</style>
