<script lang="ts">
  import Combobox, { type ComboBoxOption } from '$lib/components/shared-components/Combobox.svelte';
  import { Label, Text } from '@immich/ui';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';
  import { quintOut } from 'svelte/easing';
  import { fly } from 'svelte/transition';

  interface Props {
    title: string;
    comboboxPlaceholder: string;
    subtitle?: string;
    isEdited?: boolean;
    options: ComboBoxOption[];
    selectedOption: ComboBoxOption;
    onSelect: (combobox: ComboBoxOption | undefined) => void;
    children?: Snippet;
  }

  let {
    title,
    comboboxPlaceholder,
    subtitle = '',
    isEdited = false,
    options,
    selectedOption,
    onSelect,
    children,
  }: Props = $props();
</script>

<div>
  <div class="mb-1 flex min-h-6 place-items-center gap-2">
    <Label size="small">{title}</Label>
    {#if isEdited}
      <div
        transition:fly={{ x: 10, duration: 200, easing: quintOut }}
        class="rounded-full bg-primary/10 px-2 py-0.5 text-[11px] font-medium text-primary"
      >
        {$t('unsaved_change')}
      </div>
    {/if}
  </div>

  <Text size="small" color="muted">{subtitle}</Text>
  <div class="mt-2 flex max-w-[300px] items-center">
    <Combobox label={title} hideLabel={true} {selectedOption} {options} placeholder={comboboxPlaceholder} {onSelect} />
    {@render children?.()}
  </div>
</div>
