<script lang="ts">
  import empty1Url from '$lib/assets/empty-1.svg';

  interface Props {
    onClick?: undefined | ((event: MouseEvent) => unknown);
    text: string;
    fullWidth?: boolean;
    src?: string;
    title?: string;
    class?: string;
  }

  let { onClick = undefined, text, fullWidth = false, src = empty1Url, title, class: className }: Props = $props();

  let width = $derived(fullWidth ? 'w-full' : 'w-full max-w-lg');

  const hoverClasses = onClick
    ? 'transition-colors duration-200 ease-out hover:border-(--of-line-2) hover:bg-(--of-panel-2)'
    : '';
</script>

<!-- svelte-ignore a11y_no_static_element_interactions -->
<svelte:element
  this={onClick ? 'button' : 'div'}
  onclick={onClick}
  class="{width} {className} flex flex-col place-content-center place-items-center rounded-2xl border border-dashed p-10 {hoverClasses}"
>
  <img {src} alt="" class="max-h-48 w-auto opacity-60" width="280" draggable="false" />

  {#if title}
    <h2 class="mt-6 text-xl font-semibold text-dark">{title}</h2>
  {/if}
  <p class="text-center text-muted {title ? 'mt-1 text-sm' : 'mt-6 text-base'}">{text}</p>
</svelte:element>
