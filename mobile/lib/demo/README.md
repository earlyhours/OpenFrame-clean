# OpenFrame demo

Run the app without an external server:

```sh
flutter run --dart-define=OPENFRAME_DEMO=true
```

Or build an Android APK:

```sh
flutter build apk --debug --dart-define=OPENFRAME_DEMO=true
```

The app starts an in-process server on loopback, signs in as Alex Rivera, and serves bundled photos and videos. The library includes recent daily photo groups, albums, people, memories, favorites, archived photos, trash, shared links and a locked folder. The demo PIN is `123456`. Search and library mutations use the same API paths as a connected server; changes reset when the process restarts.

Map tiles use OpenFreeMap when network access is available. The rest of the demo works without network access. Device albums and backup use the device's actual photo library and may be empty on an emulator.

Demo mode is disabled unless the build defines `OPENFRAME_DEMO=true`. Never use the demo build for real backups.
