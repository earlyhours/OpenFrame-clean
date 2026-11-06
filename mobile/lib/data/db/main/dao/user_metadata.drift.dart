// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $UserMetadataRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  UserMetadataRepositoryManager get managers =>
      UserMetadataRepositoryManager(this);
}

class UserMetadataRepositoryManager {
  final $UserMetadataRepositoryMixin _db;
  UserMetadataRepositoryManager(this._db);
}
