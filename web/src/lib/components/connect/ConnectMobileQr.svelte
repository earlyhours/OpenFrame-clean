<script lang="ts">
  import { page } from '$app/state';
  import Qrcode from '$lib/components/shared-components/Qrcode.svelte';
  import FormatMessage from '$lib/elements/FormatMessage.svelte';
  import { getConnectPayload, isLoopbackUrl, normalizeServerUrl } from '$lib/utils/connect-mobile';
  import { Alert, Button, Field, Input } from '@immich/ui';
  import { mdiRestore } from '@mdi/js';
  import { t } from 'svelte-i18n';

  interface Props {
    /** Address the phone should use to reach this server. Defaults to the origin of this page. */
    serverBaseUrl?: string;
  }

  const defaultUrl = page.url.origin;

  let { serverBaseUrl = defaultUrl }: Props = $props();

  const QR_SIZE = 216;

  const normalizedUrl = $derived(normalizeServerUrl(serverBaseUrl));
  const payload = $derived(normalizedUrl ? getConnectPayload(normalizedUrl) : undefined);
  const loopback = $derived(!!normalizedUrl && isLoopbackUrl(normalizedUrl));
  const hostname = $derived(normalizedUrl ? new URL(normalizedUrl).hostname : '');
  const port = $derived(normalizedUrl ? new URL(normalizedUrl).port : '');
  const lanExample = $derived(`http://192.168.1.20${port ? `:${port}` : ''}`);
  const edited = $derived(serverBaseUrl !== defaultUrl);
</script>

<div class="connect flex flex-col gap-6">
  <div class="flex flex-col items-center gap-6 sm:flex-row sm:items-start">
    <div class="qr shrink-0" style="width: {QR_SIZE}px; height: {QR_SIZE}px">
      {#if payload}
        <Qrcode value={payload} width={QR_SIZE} alt={$t('connect_phone_qr_alt', { values: { url: normalizedUrl } })} />
      {:else}
        <p class="qr-empty">{$t('connect_phone_url_invalid', { values: { example: lanExample } })}</p>
      {/if}
    </div>

    <div class="flex min-w-0 flex-1 flex-col gap-4">
      <p class="instructions font-medium">{$t('connect_phone_instructions')}</p>
      <p class="text-sm/6 text-muted">{$t('connect_phone_signin_note')}</p>
    </div>
  </div>

  <div class="flex flex-col gap-2">
    <Field label={$t('connect_phone_server_url')}>
      <div class="flex gap-2">
        <Input
          bind:value={serverBaseUrl}
          type="url"
          inputmode="url"
          autocomplete="off"
          autocapitalize="off"
          spellcheck={false}
          class="font-mono"
        />
        {#if edited}
          <Button
            type="button"
            color="secondary"
            variant="ghost"
            shape="round"
            leadingIcon={mdiRestore}
            title={$t('connect_phone_reset')}
            aria-label={$t('connect_phone_reset')}
            onclick={() => (serverBaseUrl = defaultUrl)}
          />
        {/if}
      </div>
    </Field>
  </div>

  {#if loopback}
    <Alert color="warning" size="small" title={$t('connect_phone_localhost_title')}>
      <p class="text-sm/6">
        {$t('connect_phone_localhost_warning', { values: { host: hostname, example: lanExample } })}
      </p>
    </Alert>
  {/if}

  <p class="text-sm/6 text-muted">
    <FormatMessage key="connect_phone_cli_hint">
      {#snippet children({ tag, message })}
        {#if tag === 'code'}
          <code class="cli">{message}</code>
        {:else}
          {message}
        {/if}
      {/snippet}
    </FormatMessage>
  </p>
</div>

<style>
  .qr {
    box-sizing: content-box;
    overflow: hidden;
    border: 1px solid var(--of-line);
    border-radius: 16px;
    background: #fff;
  }

  .qr-empty {
    display: flex;
    height: 100%;
    align-items: center;
    padding: 16px;
    text-align: center;
    font-size: 14px;
    line-height: 24px;
    color: #48443e;
  }

  .instructions {
    font-size: 16px;
    line-height: 24px;
    color: var(--of-ink);
    text-wrap: balance;
  }

  .cli {
    padding: 2px 8px;
    border-radius: 8px;
    background: var(--of-accent-soft);
    color: var(--of-ink);
    font-family: var(--font-mono);
    font-size: 13px;
    white-space: nowrap;
  }
</style>
