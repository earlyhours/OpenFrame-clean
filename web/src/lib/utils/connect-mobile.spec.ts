import { getConnectPayload, isLoopbackUrl, normalizeServerUrl } from '$lib/utils/connect-mobile';

describe('connect-mobile', () => {
  describe('getConnectPayload', () => {
    it('encodes the server url into the openframe scheme', () => {
      expect(getConnectPayload('http://192.168.1.20:2283')).toBe(
        'openframe://connect?url=http%3A%2F%2F192.168.1.20%3A2283',
      );
    });
  });

  describe('normalizeServerUrl', () => {
    it('keeps a full origin as is', () => {
      expect(normalizeServerUrl('https://photos.example.com')).toBe('https://photos.example.com');
    });

    it('adds http when the scheme is missing and drops trailing slashes', () => {
      expect(normalizeServerUrl(' 192.168.1.20:2283/ ')).toBe('http://192.168.1.20:2283');
    });

    it.each(['', ' '.repeat(3), 'ftp://example.com', 'http://'])('rejects %j', (value) => {
      expect(normalizeServerUrl(value)).toBeUndefined();
    });
  });

  describe('isLoopbackUrl', () => {
    it.each(['http://localhost:2283', 'http://127.0.0.1:2283', 'http://[::1]:2283'])('flags %s', (url) => {
      expect(isLoopbackUrl(url)).toBe(true);
    });

    it.each(['http://192.168.1.20:2283', 'https://photos.example.com'])('allows %s', (url) => {
      expect(isLoopbackUrl(url)).toBe(false);
    });
  });
});
