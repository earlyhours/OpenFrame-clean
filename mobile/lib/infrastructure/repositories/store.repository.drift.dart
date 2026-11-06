// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $StoreRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  StoreRepositoryManager get managers => StoreRepositoryManager(this);
}

class StoreRepositoryManager {
  final $StoreRepositoryMixin _db;
  StoreRepositoryManager(this._db);
}
