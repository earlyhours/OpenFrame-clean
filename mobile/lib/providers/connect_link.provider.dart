import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/providers/auth.provider.dart';

/// Retained across bootstrap until the login form can consume the link.
final pendingConnectLinkProvider = StateProvider<String?>((ref) {
  ref.listen(authProvider.select((auth) => auth.isAuthenticated), (_, authenticated) {
    if (authenticated) {
      ref.controller.state = null;
    }
  });
  return null;
});
