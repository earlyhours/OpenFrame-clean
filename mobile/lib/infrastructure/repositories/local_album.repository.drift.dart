// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $LocalAlbumRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  LocalAlbumRepositoryManager get managers => LocalAlbumRepositoryManager(this);
}

class LocalAlbumRepositoryManager {
  final $LocalAlbumRepositoryMixin _db;
  LocalAlbumRepositoryManager(this._db);
}
