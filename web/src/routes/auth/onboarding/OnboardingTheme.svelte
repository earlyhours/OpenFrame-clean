<script lang="ts">
  import { Icon, themeManager, ThemePreference } from '@immich/ui';
  import { mdiCheckCircle } from '@mdi/js';
  import { t } from 'svelte-i18n';

  const options = $derived([
    { value: ThemePreference.Light, label: $t('light'), swatch: ['light'] },
    { value: ThemePreference.Dark, label: $t('dark'), swatch: ['dark'] },
    { value: ThemePreference.System, label: $t('system_theme'), swatch: ['light', 'dark'] },
  ]);
</script>

<div class="grid grid-cols-3 gap-3" role="radiogroup" aria-label={$t('theme')}>
  {#each options as option (option.value)}
    {@const selected = themeManager.preference === option.value}
    <button
      type="button"
      role="radio"
      aria-checked={selected}
      class="group flex flex-col gap-2 rounded-2xl border p-2 text-start transition-colors {selected
        ? 'border-primary bg-primary/5'
        : 'border-light-200 hover:border-light-300'}"
      onclick={() => themeManager.setPreference(option.value)}
    >
      <span class="flex aspect-4/3 w-full overflow-hidden rounded-lg border border-light-200">
        {#each option.swatch as mode (mode)}
          <span class="preview flex flex-1 flex-col gap-1.5 p-2.5" data-mode={mode}>
            <span class="h-1.5 w-1/2 rounded-full bg-current opacity-60"></span>
            <span class="grid flex-1 grid-cols-2 gap-1">
              <span class="tile rounded-sm"></span>
              <span class="tile rounded-sm"></span>
              <span class="tile rounded-sm"></span>
              <span class="tile accent rounded-sm"></span>
            </span>
          </span>
        {/each}
      </span>
      <span class="flex items-center justify-between px-1 pb-1 text-sm font-medium">
        {option.label}
        {#if selected}
          <Icon icon={mdiCheckCircle} size="18" class="text-primary" />
        {/if}
      </span>
    </button>
  {/each}
</div>

<style>
  .preview[data-mode='light'] {
    background: #ece9e3;
    color: #1d1c1a;
  }

  .preview[data-mode='dark'] {
    background: #0b0b0c;
    color: #f2f1ec;
  }

  .tile {
    background: currentColor;
    opacity: 0.14;
  }

  .tile.accent {
    background: var(--of-accent);
    opacity: 0.85;
  }
</style>
