import 'package:error_handler/error_handler.dart';

import '../../domain/entities/sign_in_req_entity.dart';

abstract class AuthStrategy {
  Future<ExecuteGuard<void>> signIn({required SignInReqEntity signInReq});
}
