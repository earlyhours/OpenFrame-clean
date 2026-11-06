<script lang="ts">
  import { generateId } from '$lib/utils/generate-id';

  interface Props {
    filters: string[];
    labels?: string[];
    selected: string;
    label: string;
    onSelect: (selected: string) => void;
  }

  let { filters, selected, label, labels, onSelect }: Props = $props();

  const id = `group-tab-${generateId()}`;
</script>

<fieldset class="flex h-full rounded-[10px] border bg-(--of-panel-2) p-0.5 has-focus-visible:ring">
  <legend class="sr-only">{label}</legend>
  {#each filters as filter, index (`${id}-${index}`)}
    <div class="group">
      <input
        type="radio"
        name={id}
        id="{id}-{index}"
        class="peer sr-only"
        value={filter}
        checked={filter === selected}
        onchange={() => onSelect(filter)}
      />
      <label
        for="{id}-{index}"
        class="flex h-full cursor-pointer items-center rounded-lg px-3 text-sm font-medium text-muted transition-colors duration-150 ease-out peer-checked:bg-(--of-panel) peer-checked:text-dark peer-checked:shadow-[0_0_0_1px_var(--of-line)] hover:text-dark"
      >
        {labels?.[index] ?? filter}
      </label>
    </div>
  {/each}
</fieldset>
