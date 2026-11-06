// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $PeopleDatabaseRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  PeopleDatabaseRepositoryManager get managers =>
      PeopleDatabaseRepositoryManager(this);
}

class PeopleDatabaseRepositoryManager {
  final $PeopleDatabaseRepositoryMixin _db;
  PeopleDatabaseRepositoryManager(this._db);
}
