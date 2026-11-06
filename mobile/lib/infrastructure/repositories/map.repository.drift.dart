// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $MapRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  MapRepositoryManager get managers => MapRepositoryManager(this);
}

class MapRepositoryManager {
  final $MapRepositoryMixin _db;
  MapRepositoryManager(this._db);
}
