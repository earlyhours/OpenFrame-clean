<script lang="ts" module>
  export const headerId = 'user-page-header';
</script>

<script lang="ts">
  import { useActions, type ActionArray } from '$lib/actions/use-actions';
  import NavigationBar from '$lib/components/shared-components/navigation-bar/NavigationBar.svelte';
  import UserSidebar from '$lib/components/shared-components/side-bar/UserSidebar.svelte';
  import type { HeaderButtonActionItem } from '$lib/types';
  import { openFileUploadDialog } from '$lib/utils/file-uploader';
  import { Button, ContextMenuButton, HStack, isMenuItemType, type MenuItemType } from '@immich/ui';
  import type { Snippet } from 'svelte';
  import { t } from 'svelte-i18n';

  interface Props {
    hideNavbar?: boolean;
    title?: string | undefined;
    description?: string | undefined;
    scrollbar?: boolean;
    /** Overrides the default content padding. Timeline pages and full-bleed pages (map) opt out of the roomy default. */
    contentClass?: string;
    use?: ActionArray;
    actions?: Array<HeaderButtonActionItem | MenuItemType>;
    sidebar?: Snippet;
    buttons?: Snippet;
    children?: Snippet;
  }

  let {
    hideNavbar = false,
    title = undefined,
    description = undefined,
    scrollbar = true,
    contentClass,
    use = [],
    actions = [],
    sidebar,
    buttons,
    children,
  }: Props = $props();

  const enabledActions = $derived(
    actions
      .filter((action): action is HeaderButtonActionItem => !isMenuItemType(action))
      .filter((action) => action.$if?.() ?? true),
  );

  let scrollbarClass = $derived(scrollbar ? 'immich-scrollbar' : 'scrollbar-hidden');
  let hasTitleClass = $derived(title ? 'top-18 h-[calc(100%-(--spacing(18)))]' : 'top-0 h-full');
  // Timeline pages hide the scrollbar and lay out their own grid, so they keep the tight gutter.
  let paddingClass = $derived(contentClass ?? (scrollbar ? 'p-4 md:p-6' : 'p-2'));
</script>

<header>
  {#if !hideNavbar}
    <NavigationBar onUploadClick={() => openFileUploadDialog()} />
  {/if}
</header>
<div
  tabindex="-1"
  class="relative z-0 grid grid-cols-[--spacing(0)_auto] overflow-hidden sidebar:grid-cols-[--spacing(64)_auto]
    {hideNavbar ? 'h-dvh' : 'h-[calc(100dvh-var(--navbar-height))] max-md:h-[calc(100dvh-var(--navbar-height-md))]'}
    {hideNavbar ? 'pt-(--navbar-height)' : ''}
    {hideNavbar ? 'max-md:pt-(--navbar-height-md)' : ''}"
>
  {#if sidebar}
    {@render sidebar()}
  {:else}
    <UserSidebar />
  {/if}

  <main class="relative">
    <div class="{scrollbarClass} absolute {hasTitleClass} w-full overflow-y-auto {paddingClass}" use:useActions={use}>
      {@render children?.()}
    </div>

    {#if title || buttons}
      <div class="absolute flex h-18 w-full place-items-center justify-between gap-4 border-b px-4 text-dark md:px-6">
        <div class="flex min-w-0 items-baseline gap-3">
          {#if title}
            <h1 class="of-page-title truncate outline-none" tabindex="-1" id={headerId}>{title}</h1>
          {/if}
          {#if description}
            <p class="truncate text-sm text-muted">{description}</p>
          {/if}
        </div>

        {@render buttons?.()}

        {#if enabledActions.length > 0}
          <div class="hidden md:block">
            <HStack gap={0}>
              {#each enabledActions as action, i (i)}
                <Button
                  variant="ghost"
                  size="small"
                  color={action.color ?? 'secondary'}
                  leadingIcon={action.icon}
                  onclick={(event: MouseEvent) => action.onAction({ event, action })}
                  title={action.data?.title}
                >
                  {action.title}
                </Button>
              {/each}
            </HStack>
          </div>

          <ContextMenuButton aria-label={$t('open')} items={actions} class="md:hidden" />
        {/if}
      </div>
    {/if}
  </main>
</div>
