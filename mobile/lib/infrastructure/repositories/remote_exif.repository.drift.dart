// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $RemoteExifRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  RemoteExifRepositoryManager get managers => RemoteExifRepositoryManager(this);
}

class RemoteExifRepositoryManager {
  final $RemoteExifRepositoryMixin _db;
  RemoteExifRepositoryManager(this._db);
}
