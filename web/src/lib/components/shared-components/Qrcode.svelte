<script lang="ts">
  import QRCode from 'qrcode';
  import { t } from 'svelte-i18n';

  type Props = {
    value: string;
    width: number;
    alt?: string;
  };

  const { value, width, alt = $t('alt_text_qr_code') }: Props = $props();

  // SVG keeps every module square and sharp at any size and pixel density; a raster scaled to `width` does not.
  const toSvgDataUrl = async (text: string) => {
    const { toString: renderQr } = QRCode;
    const svg = await renderQr(text, { type: 'svg', margin: 4 });
    return `data:image/svg+xml;charset=utf-8,${encodeURIComponent(svg)}`;
  };

  let promise = $derived(toSvgDataUrl(value));
</script>

<div style="width: {width}px; height: {width}px">
  {#await promise then url}
    <img src={url} {alt} class="size-full" />
  {/await}
</div>
