// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/database.dart' as i1;

mixin $UserRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  UserRepositoryManager get managers => UserRepositoryManager(this);
}

class UserRepositoryManager {
  final $UserRepositoryMixin _db;
  UserRepositoryManager(this._db);
}

mixin $AuthUserRepositoryMixin on i0.DatabaseAccessor<i1.Drift> {
  AuthUserRepositoryManager get managers => AuthUserRepositoryManager(this);
}

class AuthUserRepositoryManager {
  final $AuthUserRepositoryMixin _db;
  AuthUserRepositoryManager(this._db);
}
