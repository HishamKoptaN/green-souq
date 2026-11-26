import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';

import '../repo/change_pass_repo.dart';

abstract interface class SendPassResetEmailUseCaseContract {
  Future<ExecuteGuard<void>> update({required String password});
}

@lazySingleton
class SendPassResetEmailUseCase implements SendPassResetEmailUseCaseContract {
  final ChangePassRepo repo;
  SendPassResetEmailUseCase(this.repo);
  @override
  Future<ExecuteGuard<void>> update({required String password}) async {
    return await repo.update(password: password);
  }
}
