// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $OcrRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  OcrRepositoryManager get managers => OcrRepositoryManager(this);
}

class OcrRepositoryManager {
  final $OcrRepositoryMixin _db;
  OcrRepositoryManager(this._db);
}
