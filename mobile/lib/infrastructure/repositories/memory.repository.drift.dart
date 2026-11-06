// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $MemoryRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  MemoryRepositoryManager get managers => MemoryRepositoryManager(this);
}

class MemoryRepositoryManager {
  final $MemoryRepositoryMixin _db;
  MemoryRepositoryManager(this._db);
}
