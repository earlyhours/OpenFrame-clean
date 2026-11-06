<script lang="ts">
  import { page } from '$app/state';
  import { focusTrap } from '$lib/actions/focus-trap';
  import { authManager } from '$lib/managers/auth-manager.svelte';
  import AvatarEditModal from '$lib/modals/AvatarEditModal.svelte';
  import HelpAndFeedbackModal from '$lib/modals/HelpAndFeedbackModal.svelte';
  import { Route } from '$lib/route';
  import { getAboutInfoQuery } from '$lib/queries/server.query';
  import { Button, Icon, IconButton, modalManager } from '@immich/ui';
  import { createQuery } from '@tanstack/svelte-query';
  import { mdiCog, mdiLogout, mdiPencil, mdiWrench } from '@mdi/js';
  import { t } from 'svelte-i18n';
  import { fade } from 'svelte/transition';
  import UserAvatar from '../UserAvatar.svelte';

  type Props = {
    onClose?: () => void;
  };

  let { onClose }: Props = $props();

  const query = createQuery(getAboutInfoQuery);
  const info = $derived(query.data);
</script>

<div
  in:fade={{ duration: 100 }}
  out:fade={{ duration: 100 }}
  id="account-info-panel"
  class="absolute inset-e-4 top-15 z-1 w-[min(360px,100vw-50px)] rounded-xl border bg-subtle"
  use:focusTrap
>
  <div class="flex flex-col items-center justify-center gap-4 border-b p-6">
    <div class="relative">
      <UserAvatar user={authManager.user} size="xl" />
      <div class="absolute inset-e-0 bottom-0 size-6 rounded-full">
        <IconButton
          color="primary"
          icon={mdiPencil}
          aria-label={$t('edit_avatar')}
          size="tiny"
          shape="round"
          onclick={async () => {
            onClose?.();
            await modalManager.show(AvatarEditModal);
          }}
        />
      </div>
    </div>
    <div>
      <p class="text-center text-lg font-semibold text-dark">
        {authManager.user.name}
      </p>
      <p class="text-center text-sm text-muted">{authManager.user.email}</p>
    </div>

    <div class="flex w-full flex-col gap-2">
      <Button
        href={Route.userSettings()}
        onclick={onClose}
        size="small"
        color="secondary"
        variant="ghost"
        shape="round"
        class="w-full border"
      >
        <div class="flex place-content-center place-items-center gap-2 px-2 text-center">
          <Icon icon={mdiCog} size="18" aria-hidden />
          {$t('account_settings')}
        </div>
      </Button>
      {#if authManager.user.isAdmin}
        <Button
          href={Route.systemSettings()}
          onclick={onClose}
          shape="round"
          variant="ghost"
          size="small"
          color="secondary"
          aria-current={page.url.pathname.includes('/admin') ? 'page' : undefined}
          class="w-full border"
        >
          <div class="flex place-content-center place-items-center gap-2 px-2 text-center">
            <Icon icon={mdiWrench} size="18" aria-hidden />
            {$t('administration')}
          </div>
        </Button>
      {/if}
    </div>
  </div>

  <div class="flex flex-col p-2">
    <Button class="w-full justify-start" href={Route.logout()} leadingIcon={mdiLogout} variant="ghost" color="secondary"
      >{$t('sign_out')}</Button
    >

    <button
      type="button"
      class="my-3 text-center text-xs text-muted hover:text-primary"
      onclick={async () => {
        onClose?.();
        if (info) {
          await modalManager.show(HelpAndFeedbackModal, { info });
        }
      }}
    >
      {$t('support_and_feedback')}
    </button>
  </div>
</div>
