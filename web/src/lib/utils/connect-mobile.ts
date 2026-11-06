const LOOPBACK_HOSTS = new Set(['localhost', '127.0.0.1', '::1', '[::1]', '0.0.0.0']);

/** Accepts `192.168.1.20:2283` as well as a full URL; returns `undefined` for anything that is not an http(s) address. */
export const normalizeServerUrl = (input: string): string | undefined => {
  const trimmed = input.trim();
  if (!trimmed) {
    return;
  }

  const withScheme = /^[a-z][\d+.a-z-]*:\/\//i.test(trimmed) ? trimmed : `http://${trimmed}`;

  try {
    const url = new URL(withScheme);
    if (url.protocol !== 'http:' && url.protocol !== 'https:') {
      return;
    }
    return withScheme.replace(/\/+$/, '');
  } catch {
    return;
  }
};

export const getConnectPayload = (serverBaseUrl: string) =>
  `openframe://connect?url=${encodeURIComponent(serverBaseUrl)}`;

/** A phone cannot reach the computer through its own loopback address. */
export const isLoopbackUrl = (serverBaseUrl: string) => {
  try {
    return LOOPBACK_HOSTS.has(new URL(serverBaseUrl).hostname);
  } catch {
    return false;
  }
};
