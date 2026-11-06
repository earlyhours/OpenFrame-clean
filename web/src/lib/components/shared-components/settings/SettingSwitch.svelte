<script lang="ts">
  import { generateId } from '$lib/utils/generate-id';
  import { Switch } from '@immich/ui';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';
  import { quintOut } from 'svelte/easing';
  import { fly } from 'svelte/transition';

  interface Props {
    title: string;
    subtitle?: string;
    checked?: boolean;
    disabled?: boolean;
    isEdited?: boolean;
    onToggle?: (isChecked: boolean) => void;
    children?: Snippet;
  }

  let {
    title,
    subtitle = '',
    checked = $bindable(false),
    disabled = false,
    isEdited = false,
    onToggle = () => {},
    children,
  }: Props = $props();

  let id: string = generateId();

  let switchId = $derived(`input-${id}`);
  let subtitleId = $derived(subtitle ? `${id}-subtitle` : undefined);
</script>

<div class="flex min-h-14 place-items-center justify-between gap-6 py-2">
  <div class="min-w-0">
    <div class="flex min-h-6 place-items-center gap-2">
      <label class="text-sm font-medium text-dark" for={switchId}>
        {title}
      </label>
      {#if isEdited}
        <div
          transition:fly={{ x: 10, duration: 200, easing: quintOut }}
          class="rounded-full bg-primary/10 px-2 py-0.5 text-[11px] font-medium text-primary"
        >
          {$t('unsaved_change')}
        </div>
      {/if}
    </div>

    {#if subtitle}
      <p id={subtitleId} class="mt-0.5 text-sm text-muted">{subtitle}</p>
    {/if}
    {@render children?.()}
  </div>

  <Switch {id} bind:checked {disabled} onCheckedChange={onToggle} aria-describedby={subtitleId} />
</div>
