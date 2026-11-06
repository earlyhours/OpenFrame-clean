import 'package:flutter_test/flutter_test.dart';
import 'package:immich_mobile/utils/connect_payload.dart';

void main() {
  for (final url in [
    'https://photos.example.com',
    'http://192.168.1.9:2283',
    'https://example.com/photos/',
    'http://[::1]:2283',
    'https://example.com/my%20photos',
  ]) {
    test('accepts plain and encoded $url', () {
      expect(parseConnectPayload(url), url);
      expect(parseConnectPayload('openframe://connect?url=${Uri.encodeComponent(url)}'), url);
    });
  }
  test('trims surrounding whitespace', () {
    expect(parseConnectPayload('  https://example.com\n'), 'https://example.com');
  });
  for (final payload in [
    '',
    'not a URL',
    'example.com',
    'ftp://example.com',
    'https://',
    'https://user:password@example.com',
    'https://example.com?token=secret',
    'https://example.com/#fragment',
    'https://exam ple.com',
    'https://example.com:99999',
    'https://example.com/%zz',
    'openframe://other?url=https%3A%2F%2Fexample.com',
    'openframe://connect',
    'openframe://connect/path?url=https%3A%2F%2Fexample.com',
    'openframe://connect?url=https%3A%2F%2Fa.com&url=https%3A%2F%2Fb.com',
    'openframe://connect?url=javascript%3Aalert(1)',
    'openframe://connect?url=%',
    'openframe://connect?url=https%253A%252F%252Fexample.com',
  ]) {
    test('rejects $payload', () => expect(parseConnectPayload(payload), isNull));
  }
}
