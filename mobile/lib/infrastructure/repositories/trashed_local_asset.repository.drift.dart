// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $TrashedLocalAssetRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  TrashedLocalAssetRepositoryManager get managers =>
      TrashedLocalAssetRepositoryManager(this);
}

class TrashedLocalAssetRepositoryManager {
  final $TrashedLocalAssetRepositoryMixin _db;
  TrashedLocalAssetRepositoryManager(this._db);
}
