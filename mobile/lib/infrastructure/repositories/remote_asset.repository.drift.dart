// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $RemoteAssetRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  RemoteAssetRepositoryManager get managers =>
      RemoteAssetRepositoryManager(this);
}

class RemoteAssetRepositoryManager {
  final $RemoteAssetRepositoryMixin _db;
  RemoteAssetRepositoryManager(this._db);
}
