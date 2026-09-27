import 'package:green/features/users/domain/entities/users_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/users_repo.dart';

@singleton
class UsersUseCases {
  final UsersRepo usersRepo;
  UsersUseCases(this.usersRepo);
  Stream<UsersResEntity?> watch() {
    return usersRepo.watch();
  }

  Future<ExecuteGuard<void>> getUsers({int? page, String? query}) async {
    return await usersRepo.getUsers(page: page, query: query);
  }

  Future<ExecuteGuard<void>> recordVisit({required String id}) async {
    return await usersRepo.recordVisit(id: id);
  }
}
