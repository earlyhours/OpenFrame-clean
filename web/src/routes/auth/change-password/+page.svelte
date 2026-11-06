<script lang="ts">
  import { goto } from '$app/navigation';
  import AuthShell from '$lib/components/auth/AuthShell.svelte';
  import { authManager } from '$lib/managers/auth-manager.svelte';
  import { Route } from '$lib/route';
  import { handleChangePassword } from '$lib/services/user.service';
  import { Button, Field, HelperText, PasswordInput } from '@immich/ui';
  import { t } from 'svelte-i18n';

  let currentPassword = $state('');
  let password = $state('');
  let passwordConfirm = $state('');
  const valid = $derived(currentPassword.length > 0 && password === passwordConfirm && passwordConfirm.length > 0);
  const errorMessage = $derived(passwordConfirm.length === 0 || valid ? '' : $t('password_does_not_match'));

  const onSubmit = async () => {
    if (!valid) {
      return;
    }

    const success = await handleChangePassword({ password: currentPassword, newPassword: password });
    if (success) {
      await goto(Route.logout());
    }
  };
</script>

<AuthShell
  title={$t('change_password')}
  subtitle={$t('hi_user', { values: { name: authManager.user.name, email: authManager.user.email } })}
>
  <form onsubmit={onSubmit} class="flex flex-col gap-4">
    <p class="text-sm/6 text-muted">{$t('change_password_description')}</p>

    <Field label={$t('password')} required>
      <PasswordInput bind:value={currentPassword} autocomplete="current-password" size="large" />
    </Field>

    <Field label={$t('new_password')} required>
      <PasswordInput bind:value={password} autocomplete="new-password" size="large" />
    </Field>

    <Field label={$t('confirm_password')} required>
      <PasswordInput bind:value={passwordConfirm} autocomplete="new-password" size="large" />
      <HelperText color="danger">{errorMessage}</HelperText>
    </Field>

    <Button class="mt-2" type="submit" size="large" shape="round" fullWidth disabled={!valid}
      >{$t('to_change_password')}</Button
    >
  </form>
</AuthShell>
