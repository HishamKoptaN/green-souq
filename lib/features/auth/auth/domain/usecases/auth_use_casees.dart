import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/auth_repo.dart';

abstract interface class AuthUseCasesContract {
  Future<ExecuteGuard<void>> check();
  Future<ExecuteGuard<void>> authToken();
  Future<ExecuteGuard<void>> signOut();
}

@singleton
class AuthUseCases implements AuthUseCasesContract {
  final AuthRepo authRepo;
  AuthUseCases({required this.authRepo});
  @override
  Future<ExecuteGuard<void>> check() async {
    return await authRepo.checkFirebase().then((res) async {
      return res.when(
        success: (v) async {
          return await authRepo.check();
        },
        failure: (_) async {
          return res;
        },
      );
    });
  }

  @override
  Future<ExecuteGuard<void>> authToken() async {
    return await authRepo.authToken();
  }

  @override
  Future<ExecuteGuard<void>> signOut() async {
    return await authRepo.signOut();
  }
}
