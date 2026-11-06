// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $TimelineRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  TimelineRepositoryManager get managers => TimelineRepositoryManager(this);
}

class TimelineRepositoryManager {
  final $TimelineRepositoryMixin _db;
  TimelineRepositoryManager(this._db);
}
