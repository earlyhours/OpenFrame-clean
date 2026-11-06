// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $BackupRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  BackupRepositoryManager get managers => BackupRepositoryManager(this);
}

class BackupRepositoryManager {
  final $BackupRepositoryMixin _db;
  BackupRepositoryManager(this._db);
}
