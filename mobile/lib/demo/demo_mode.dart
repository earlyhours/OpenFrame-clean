import 'package:flutter/foundation.dart';
import 'package:immich_mobile/demo/demo_server.dart';
import 'package:immich_mobile/domain/models/store.model.dart';
import 'package:immich_mobile/domain/services/background_worker.service.dart';
import 'package:immich_mobile/entities/store.entity.dart';
import 'package:immich_mobile/platform/background_worker_api.g.dart';
import 'package:immich_mobile/services/api.service.dart';
import 'package:immich_mobile/utils/semver.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// True when built with `--dart-define=OPENFRAME_DEMO=true`.
const kDemoMode = bool.fromEnvironment('OPENFRAME_DEMO');

abstract final class DemoMode {
  static DemoServer? _server;

  static DemoServer? get server => _server;

  /// Starts the in-process demo server and seeds a logged-in session so the splash screen
  /// resumes straight into the timeline. No-op unless [kDemoMode].
  static Future<void> bootstrap(ApiService apiService) async {
    if (!kDemoMode || _server != null) {
      return;
    }

    _server = await DemoServer.start(version: await _serverVersion());

    // Always (re)seed the session: the demo should open logged-in on every cold start.
    await Store.put(StoreKey.serverEndpoint, DemoServer.apiUrl);
    await Store.put(StoreKey.serverUrl, DemoServer.baseUrl);
    await Store.put(StoreKey.accessToken, DemoServer.accessToken);
    if (Store.tryGet(StoreKey.deviceId) == null) {
      await Store.put(StoreKey.deviceId, 'openframe-demo-device');
    }
    apiService.setEndpoint(DemoServer.apiUrl);

    // The native background worker would launch a second engine without the demo server.
    try {
      await BackgroundWorkerFgService(BackgroundWorkerFgHostApi()).disable();
    } catch (e) {
      debugPrint('[demo] could not disable background worker: $e');
    }
  }

  /// Report the app's own version (so no "update your app/server" banners show), but never
  /// below 3.3.0 so the newest sync stream variants are used.
  static Future<(int, int, int, int?)> _serverVersion() async {
    const minimum = SemVer(major: 3, minor: 3, patch: 0);
    try {
      final info = await PackageInfo.fromPlatform();
      final app = SemVer.fromString(info.version);
      final base = SemVer(major: app.major, minor: app.minor, patch: app.patch);
      if (base >= minimum) {
        return (app.major, app.minor, app.patch, app.prerelease);
      }
    } catch (_) {}
    return (minimum.major, minimum.minor, minimum.patch, null);
  }
}
