import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';

import '../repo/forgot_pass_repo.dart';

abstract interface class SendPassResetEmailUseCaseContract {
  Future<ExecuteGuard<void>> sendPassResetEmail({required String email});
}

@lazySingleton
class SendPassResetEmailUseCase implements SendPassResetEmailUseCaseContract {
  final ForgotPassRepo repo;
  SendPassResetEmailUseCase(this.repo);

  @override
  Future<ExecuteGuard<void>> sendPassResetEmail({required String email}) async {
    return await repo.sendPassResetEmail(email: email);
  }
}
