// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $SyncMigrationRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  SyncMigrationRepositoryManager get managers =>
      SyncMigrationRepositoryManager(this);
}

class SyncMigrationRepositoryManager {
  final $SyncMigrationRepositoryMixin _db;
  SyncMigrationRepositoryManager(this._db);
}
