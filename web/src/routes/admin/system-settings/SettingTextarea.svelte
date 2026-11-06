<script lang="ts">
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';
  import { quintOut } from 'svelte/easing';
  import { fly } from 'svelte/transition';

  interface Props {
    value: string;
    label?: string;
    description?: string;
    required?: boolean;
    disabled?: boolean;
    isEdited?: boolean;
    descriptionSnippet?: Snippet;
  }

  let {
    value = $bindable(),
    label = '',
    description = '',
    required = false,
    disabled = false,
    isEdited = false,
    descriptionSnippet,
  }: Props = $props();

  const handleInput = (e: Event) => {
    value = (e.target as HTMLInputElement).value;
  };
</script>

<div class="mb-4 w-full">
  <div class="mb-1 flex min-h-6 place-items-center gap-2">
    <label class="text-sm font-medium text-dark" for={label}>{label}</label>
    {#if required}
      <div class="text-danger">*</div>
    {/if}

    {#if isEdited}
      <div
        transition:fly={{ x: 10, duration: 200, easing: quintOut }}
        class="rounded-full bg-primary/10 px-2 py-0.5 text-[11px] font-medium text-primary"
      >
        {$t('unsaved_change')}
      </div>
    {/if}
  </div>

  {#if description}
    <p class="pb-2 text-sm immich-form-label" id="{label}-desc">
      {description}
    </p>
  {:else}
    {@render descriptionSnippet?.()}
  {/if}

  <textarea
    class="immich-form-input w-full"
    aria-describedby={description ? `${label}-desc` : undefined}
    aria-labelledby="{label}-label"
    id={label}
    name={label}
    {required}
    {value}
    oninput={handleInput}
    {disabled}></textarea>
</div>
