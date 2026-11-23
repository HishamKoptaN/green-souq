import 'package:error_handler/error_handler.dart';
import '../entities/sign_up_req_entity.dart';

abstract class SignUpRepo {
  Future<ExecuteGuard<void>> signUp({required SignUpReqEntity signUpReq});

  /// Creates the backend profile for an already-authenticated Firebase user
  /// (Google / guest) without going through the email+password sign-up.
  Future<ExecuteGuard<void>> completeProfile({
    required String name,
    required UserType userType,
  });
}
