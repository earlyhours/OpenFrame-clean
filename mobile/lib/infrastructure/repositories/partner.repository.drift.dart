// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $PartnerRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  PartnerRepositoryManager get managers => PartnerRepositoryManager(this);
}

class PartnerRepositoryManager {
  final $PartnerRepositoryMixin _db;
  PartnerRepositoryManager(this._db);
}
