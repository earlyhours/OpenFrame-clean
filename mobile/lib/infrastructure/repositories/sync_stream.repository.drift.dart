// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $SyncStreamRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  SyncStreamRepositoryManager get managers => SyncStreamRepositoryManager(this);
}

class SyncStreamRepositoryManager {
  final $SyncStreamRepositoryMixin _db;
  SyncStreamRepositoryManager(this._db);
}
