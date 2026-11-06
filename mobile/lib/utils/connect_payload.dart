/// Parses a server QR code without interpreting arbitrary links as endpoints.
String? parseConnectPayload(String payload) {
  try {
    var value = payload.trim();
    var uri = Uri.parse(value);
    if (uri.scheme == 'openframe') {
      if (uri.host != 'connect' || uri.path.isNotEmpty || uri.hasFragment || uri.userInfo.isNotEmpty || uri.hasPort) {
        return null;
      }
      final urls = uri.queryParametersAll['url'];
      if (urls == null || urls.length != 1) {
        return null;
      }
      value = urls.single;
      uri = Uri.parse(value);
    }
    if ((uri.scheme != 'http' && uri.scheme != 'https') ||
        !uri.hasAuthority ||
        uri.host.isEmpty ||
        uri.userInfo.isNotEmpty ||
        uri.hasQuery ||
        uri.hasFragment ||
        RegExp(r'\s|[\\]').hasMatch(value) ||
        RegExp(r'%(?![0-9a-fA-F]{2})').hasMatch(value) ||
        (uri.hasPort && (uri.port < 1 || uri.port > 65535))) {
      return null;
    }
    return uri.toString();
  } on FormatException {
    return null;
  }
}
