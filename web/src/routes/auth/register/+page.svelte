<script lang="ts">
  import { goto } from '$app/navigation';
  import AuthShell from '$lib/components/auth/AuthShell.svelte';
  import { queryClient } from '$lib/queries/client';
  import { getServerConfigQuery } from '$lib/queries/server.query';
  import { Route } from '$lib/route';
  import { handleError } from '$lib/utils/handle-error';
  import { signUpAdmin } from '@immich/sdk';
  import { Alert, Button, Field, Input, PasswordInput } from '@immich/ui';
  import { t } from 'svelte-i18n';

  let email = $state('');
  let password = $state('');
  let confirmPassword = $state('');
  let name = $state('');
  let loading = $state(false);
  let errorMessage = $derived(
    password === confirmPassword || confirmPassword.length === 0 ? '' : $t('password_does_not_match'),
  );
  const valid = $derived(password === confirmPassword && confirmPassword.length > 0);

  const onSubmit = async (event: Event) => {
    event.preventDefault();

    if (!valid || loading) {
      return;
    }

    loading = true;
    errorMessage = '';

    try {
      await signUpAdmin({ signUpDto: { email, password, name } });
      await queryClient.refetchQueries({ queryKey: getServerConfigQuery().queryKey });
      await goto(Route.login());
    } catch (error) {
      handleError(error, $t('errors.unable_to_create_admin_account'));
      errorMessage = $t('errors.unable_to_create_admin_account');
    } finally {
      loading = false;
    }
  };
</script>

<AuthShell title={$t('auth_register_title')} subtitle={$t('auth_register_subtitle')}>
  <form onsubmit={onSubmit} method="post" class="flex flex-col gap-4">
    <Field label={$t('admin_email')} required>
      <Input bind:value={email} type="email" autocomplete="email" size="large" />
    </Field>

    <Field label={$t('admin_password')} required>
      <PasswordInput bind:value={password} autocomplete="new-password" size="large" />
    </Field>

    <Field label={$t('confirm_admin_password')} required>
      <PasswordInput bind:value={confirmPassword} autocomplete="new-password" size="large" />
    </Field>

    <Field label={$t('name')} required>
      <Input bind:value={name} type="text" autocomplete="name" size="large" />
    </Field>

    {#if errorMessage}
      <Alert color="danger" title={errorMessage} size="medium" />
    {/if}

    <Button class="mt-2" type="submit" size="large" shape="round" fullWidth disabled={!valid || loading} {loading}
      >{$t('sign_up')}</Button
    >

    <p class="text-sm/6 text-muted">{$t('admin.registration_description')}</p>
  </form>
</AuthShell>
