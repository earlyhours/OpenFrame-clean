<script lang="ts" module>
  // Necessary for eslint
  /* eslint-disable @typescript-eslint/no-explicit-any */
  type T = any;

  export type RenderedOption = {
    title: string;
    icon?: string;
    disabled?: boolean;
  };
</script>

<script lang="ts" generics="T">
  import { clickOutside } from '$lib/actions/click-outside';
  import { Button, Icon, Text } from '@immich/ui';
  import { mdiCheck } from '@mdi/js';
  import { isEqual } from 'lodash-es';
  import { fly } from 'svelte/transition';

  interface Props {
    class?: string;
    options: T[];
    selectedOption?: any;
    showMenu?: boolean;
    controlable?: boolean;
    hideTextOnSmallScreen?: boolean;
    title?: string | undefined;
    position?: 'bottom-left' | 'bottom-right';
    onSelect: (option: T) => void;
    onClickOutside?: () => void;
    render?: (item: T) => string | RenderedOption;
  }

  let {
    position = 'bottom-left',
    class: className = '',
    options,
    selectedOption = $bindable(options[0]),
    showMenu = $bindable(false),
    controlable = false,
    hideTextOnSmallScreen = true,
    title = undefined,
    onSelect,
    onClickOutside = () => {},
    render = String,
  }: Props = $props();

  const handleClickOutside = () => {
    if (!controlable) {
      showMenu = false;
    }

    onClickOutside();
  };

  const handleSelectOption = (option: T) => {
    onSelect(option);
    selectedOption = option;

    showMenu = false;
  };

  const renderOption = (option: T): RenderedOption => {
    const renderedOption = render(option);
    switch (typeof renderedOption) {
      case 'string': {
        return { title: renderedOption };
      }
      default: {
        return {
          title: renderedOption.title,
          icon: renderedOption.icon,
          disabled: renderedOption.disabled,
        };
      }
    }
  };

  let renderedSelectedOption = $derived(renderOption(selectedOption));

  const getAlignClass = (position: 'bottom-left' | 'bottom-right') => {
    switch (position) {
      case 'bottom-left': {
        return 'inset-s-0';
      }
      case 'bottom-right': {
        return 'inset-e-0';
      }

      default: {
        return '';
      }
    }
  };
</script>

<div use:clickOutside={{ onOutclick: handleClickOutside, onEscape: handleClickOutside }} class="relative">
  <!-- BUTTON TITLE -->
  <Button onclick={() => (showMenu = true)} fullWidth {title} variant="ghost" color="secondary" size="small">
    {#if renderedSelectedOption?.icon}
      <Icon icon={renderedSelectedOption.icon} />
    {/if}
    <Text class={hideTextOnSmallScreen ? 'hidden sm:block' : ''}>{renderedSelectedOption.title}</Text>
  </Button>

  <!-- DROP DOWN MENU -->
  {#if showMenu}
    <div
      transition:fly={{ y: -8, duration: 180 }}
      class="absolute z-1 flex max-h-[70vh] min-w-75 immich-scrollbar flex-col overflow-y-auto rounded-xl border bg-subtle p-1 text-sm font-medium text-dark shadow-lg {className} {getAlignClass(
        position,
      )}"
    >
      {#each options as option (option)}
        {@const renderedOption = renderOption(option)}
        {@const buttonStyle = renderedOption.disabled ? '' : 'transition-colors duration-150 hover:bg-(--of-panel-2)'}
        <button
          type="button"
          class="grid min-h-10 grid-cols-[36px_1fr] place-items-center rounded-lg px-2 disabled:opacity-40 {buttonStyle}"
          disabled={renderedOption.disabled}
          onclick={() => !renderedOption.disabled && handleSelectOption(option)}
        >
          {#if isEqual(selectedOption, option)}
            <div class="text-primary">
              <Icon icon={mdiCheck} />
            </div>
            <p class="justify-self-start text-primary">
              {renderedOption.title}
            </p>
          {:else}
            <div></div>
            <p class="justify-self-start">
              {renderedOption.title}
            </p>
          {/if}
        </button>
      {/each}
    </div>
  {/if}
</div>
