<script lang="ts">
  import { goto } from '$app/navigation';
  import AuthShell from '$lib/components/auth/AuthShell.svelte';
  import PinCodeCreateForm from '$lib/components/user-settings-page/PinCodeCreateForm.svelte';
  import { Route } from '$lib/route';
  import { handleError } from '$lib/utils/handle-error';
  import { unlockAuthSession } from '@immich/sdk';
  import { Button, PinInput } from '@immich/ui';
  import { mdiLockOpenVariantOutline, mdiLockOutline, mdiLockSmart } from '@mdi/js';
  import { t } from 'svelte-i18n';
  import type { PageData } from './$types';

  interface Props {
    data: PageData;
  }

  let { data }: Props = $props();

  let isVerified = $state(false);
  let isBadPinCode = $state(false);
  let hasPinCode = $derived(data.hasPinCode);
  let pinCode = $state('');

  const handleUnlockSession = async (code: string) => {
    isBadPinCode = false;
    try {
      await unlockAuthSession({ sessionUnlockDto: { pinCode: code } });

      isVerified = true;

      await new Promise((resolve) => setTimeout(resolve, 1000));

      await goto(data.continueUrl);
    } catch (error) {
      handleError(error, $t('wrong_pin_code'));
      isBadPinCode = true;
    }
  };
</script>

<AuthShell
  title={hasPinCode ? $t('auth_pin_title') : $t('auth_pin_create_title')}
  subtitle={hasPinCode ? $t('enter_your_pin_code_subtitle') : $t('new_pin_code_subtitle')}
  icon={isVerified ? mdiLockOpenVariantOutline : hasPinCode ? mdiLockOutline : mdiLockSmart}
  iconTone={isVerified ? 'success' : isBadPinCode ? 'danger' : 'default'}
>
  <div class="flex flex-col items-center gap-6" aria-live="polite">
    {#if hasPinCode}
      {#if !isVerified}
        <PinInput password autofocus bind:value={pinCode} onComplete={handleUnlockSession} />
      {/if}
    {:else}
      <PinCodeCreateForm showLabel={false} onCreated={() => (hasPinCode = true)} />
    {/if}

    {#if !isVerified}
      <Button type="button" color="secondary" variant="ghost" shape="round" onclick={() => goto(Route.photos())}
        >{$t('cancel')}</Button
      >
    {/if}
  </div>
</AuthShell>
