// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $LocalAssetRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  LocalAssetRepositoryManager get managers => LocalAssetRepositoryManager(this);
}

class LocalAssetRepositoryManager {
  final $LocalAssetRepositoryMixin _db;
  LocalAssetRepositoryManager(this._db);
}
