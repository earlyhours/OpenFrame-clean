import assert from 'node:assert/strict';
import { test } from 'node:test';
import { execFileSync, spawnSync } from 'node:child_process';
import { mkdtempSync, writeFileSync, rmSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { candidateUrls, connection, renderQr } from '../native/connect.mjs';

const ipv4 = (address, internal = false) => ({ address, family: 'IPv4', internal });
test('default-route interface wins; virtual, loopback and link-local addresses are excluded', () => {
  assert.deepEqual(candidateUrls({
    eth0: [ipv4('192.168.2.3')], wlan0: [ipv4('192.168.1.20'), { family: 'IPv6', address: '::1' }],
    docker0: [ipv4('172.17.0.1')], 'br-123': [ipv4('172.18.0.1')], veth123: [ipv4('10.0.0.1')],
    lo: [ipv4('127.0.0.1', true)], eth1: [ipv4('169.254.1.1')],
  }, 'wlan0', 4321), ['http://192.168.1.20:4321', 'http://192.168.2.3:4321']);
  assert.throws(() => candidateUrls({}, '', 'bad'));
});
test('payload round-trips the exact displayed URL, including proxy paths', () => {
  for (const url of ['http://192.168.1.20:2283', 'https://photos.example/frame/', 'http://[::1]:2283']) {
    assert.equal(new URL(connection(url).payload).searchParams.get('url'), url);
  }
  assert.equal(connection('http://192.168.1.20:2283').payload, 'openframe://connect?url=http%3A%2F%2F192.168.1.20%3A2283');
  for (const url of ['file:///tmp/foo', 'https://user:secret@example.com', 'https://example.com/\n', 'https://example.com/?x=1']) assert.throws(() => connection(url));
});
test('offline Node fallback produces fixed-width QR rows with four-module quiet zone and no ANSI', () => {
  const oldPath = process.env.PATH;
  process.env.PATH = '/nonexistent';
  try {
    const payload = connection('http://192.168.1.20:2283').payload;
    const output = renderQr(payload, 100, true);
    const lines = output.split('\n').slice(0, -1);
    assert.ok(output.includes('█'));
    assert.ok(!output.includes('\x1b'));
    assert.ok(lines.every((line) => line.length === lines[0].length));
    assert.ok(lines.slice(0, 2).every((line) => /^█+$/.test(line)));
    assert.ok(lines.every((line) => line.startsWith('████') && line.endsWith('████')));
    assert.match(renderQr(payload, 20, true), /Widen your terminal/);
  } finally { process.env.PATH = oldPath; }
});
test('CLI alias, override, config port and redirected output', () => {
  const dir = mkdtempSync(join(tmpdir(), 'openframe-connect-'));
  try {
    const config = join(dir, 'env');
    writeFileSync(config, 'IMMICH_PORT=4321\n');
    const env = { ...process.env, OPENFRAME_CONFIG: config, NO_COLOR: '1' };
    const cli = new URL('../native/openframe', import.meta.url).pathname;
    const args = ['--url', 'https://photos.example/frame'];
    const connect = execFileSync(cli, ['connect', ...args], { env, encoding: 'utf8' });
    assert.equal(execFileSync(cli, ['qr', ...args], { env, encoding: 'utf8' }), connect);
    assert.match(connect, /https:\/\/photos.example\/frame/);
    assert.match(connect, /Open OpenFrame on your phone → Scan QR/);
    assert.ok(!connect.includes('\x1b') && !connect.includes('█'));
    assert.equal(spawnSync(cli, ['qr', '--url'], { env }).status, 1);
    assert.equal(spawnSync(cli, ['qr', '--url', 'javascript:alert(1)'], { env }).status, 1);
    const auto = execFileSync(cli, ['connect'], { env, encoding: 'utf8' });
    assert.match(auto, /http:\/\/[\d.]+:4321/);
  } finally { rmSync(dir, { recursive: true, force: true }); }
});
