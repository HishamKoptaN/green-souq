import 'package:error_handler/error_handler.dart';

import '../entities/users_res_entity.dart';

abstract class UsersRepo {
  Stream<UsersResEntity?> watch();
  Future<ExecuteGuard<void>> getUsers({int? page, String? query});
  Future<ExecuteGuard<void>> recordVisit({required String id});
}
