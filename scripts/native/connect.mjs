import { networkInterfaces } from 'node:os';
import { execFileSync } from 'node:child_process';
import { createRequire } from 'node:module';
import { pathToFileURL } from 'node:url';

export function candidateUrls(interfaces, preferred, port) {
  if (!/^\d+$/.test(String(port)) || +port < 1 || +port > 65535) throw new Error('Invalid server port.');
  const candidates = Object.entries(interfaces)
    .filter(([name]) => !/^(lo$|docker|br-|virbr|veth|tun|tap|tailscale|wg|zt|vmnet|vboxnet|cni|flannel|podman|dummy)/i.test(name))
    .sort(([a], [b]) => Number(b === preferred) - Number(a === preferred))
    .flatMap(([, entries]) => (entries || [])
      .filter(({ family, internal, address }) => (family === 'IPv4' || family === 4) && !internal && !/^(127\.|169\.254\.|0\.)/.test(address))
      .map(({ address }) => `http://${address}:${port}`));
  return [...new Set(candidates)];
}

export function connection(url) {
  if (!url || /[\s\x00-\x1f\x7f]/.test(url)) throw new Error('Use an http:// or https:// server URL without whitespace.');
  const parsed = new URL(url);
  if (!['http:', 'https:'].includes(parsed.protocol) || parsed.username || parsed.password || parsed.hash || parsed.search) {
    throw new Error('Use an http:// or https:// server base URL without credentials, query or fragment.');
  }
  return { url, host: parsed.hostname, payload: `openframe://connect?url=${encodeURIComponent(url)}` };
}

export function renderQr(payload, columns, noColor = false) {
  let output;
  try {
    output = execFileSync('qrencode', ['-m', '4', '-t', noColor ? 'UTF8' : 'ANSIUTF8', payload], { encoding: 'utf8', stdio: ['ignore', 'pipe', 'pipe'] });
  } catch {
    const require = createRequire(new URL('../../web/package.json', import.meta.url));
    const qr = require('qrcode').create(payload, { errorCorrectionLevel: 'M' });
    const size = qr.modules.size + 8;
    const dark = (x, y) => x >= 4 && y >= 4 && x < size - 4 && y < size - 4 && qr.modules.get(y - 4, x - 4);
    output = '';
    for (let y = 0; y < size; y += 2) {
      for (let x = 0; x < size; x++) output += dark(x, y) ? (dark(x, y + 1) ? ' ' : '▄') : (dark(x, y + 1) ? '▀' : '█');
      output += '\n';
    }
  }
  const width = Math.max(...output.replace(/\x1b\[[0-9;]*m/g, '').trimEnd().split('\n').map((line) => [...line].length));
  if (width + 5 > columns) return 'Widen your terminal to show the QR code.\n';
  return output;
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  try {
    if (process.argv[2] === 'render') {
      process.stdout.write(renderQr(process.argv[3], Number(process.argv[4]) || 80, Boolean(process.env.NO_COLOR)));
    } else {
      let preferred;
      try {
        preferred = JSON.parse(execFileSync('ip', ['-j', '-4', 'route', 'show', 'default'], { encoding: 'utf8', stdio: ['ignore', 'pipe', 'pipe'] }))
          .sort((a, b) => (a.metric || 0) - (b.metric || 0))[0]?.dev;
      } catch { /* Interface enumeration also works without iproute2. */ }
      const urls = candidateUrls(networkInterfaces(), preferred, process.env.IMMICH_PORT || 2283);
      const selected = process.argv[2] || urls[0];
      if (!selected) throw new Error('No LAN IPv4 found. Connect to your network or use --url <url>.');
      const { url, host, payload } = connection(selected);
      console.log([url, host, payload, ...urls.filter((candidate) => candidate !== url)].join('\n'));
    }
  } catch (error) {
    console.error(`openframe: ${error.message}`);
    process.exitCode = 1;
  }
}
