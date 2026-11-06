// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $RemoteAlbumRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  RemoteAlbumRepositoryManager get managers =>
      RemoteAlbumRepositoryManager(this);
}

class RemoteAlbumRepositoryManager {
  final $RemoteAlbumRepositoryMixin _db;
  RemoteAlbumRepositoryManager(this._db);
}
