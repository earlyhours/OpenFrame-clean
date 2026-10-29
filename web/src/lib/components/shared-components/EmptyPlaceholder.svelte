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

  let width = $derived(fullWidth ? 'w-full' : 'w-1/2');

  const hoverClasses = onClick
    ? `border dark:border-immich-dark-gray hover:bg-immich-primary/5 dark:hover:bg-immich-dark-primary/25`
    : '';
</script>

<!-- svelte-ignore a11y_no_static_element_interactions -->
<svelte:element
  this={onClick ? 'button' : 'div'}
  onclick={onClick}
  class="{width} {className} flex flex-col place-content-center place-items-center rounded-xl border bg-subtle p-8 {hoverClasses}"
>
  <img {src} alt="" class="max-h-60 opacity-60" width="360" draggable="false" />

  {#if title}
    <h2 class="my-4 font-display text-3xl">{title}</h2>
  {/if}
  <p class="text-center text-dark {title ? 'text-sm' : 'font-display text-2xl'}">{text}</p>
</svelte:element>
