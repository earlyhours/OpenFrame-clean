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

<fieldset class="of-segments flex h-full rounded-lg border bg-subtle p-1 has-focus-visible:ring">
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
        class="relative flex h-full cursor-pointer items-center rounded-md px-3 font-mono text-xs text-muted peer-checked:bg-light-200 peer-checked:text-dark hover:bg-light-200"
      >
        {labels?.[index] ?? filter}
      </label>
    </div>
  {/each}
</fieldset>

<style>
  input:checked + label::after {
    content: '';
    position: absolute;
    bottom: -4px;
    left: calc(50% - 8px);
    width: 16px;
    height: 2px;
    background: var(--of-accent);
  }
</style>
