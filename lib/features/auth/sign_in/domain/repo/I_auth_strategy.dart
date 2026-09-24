import 'package:error_handler/error_handler.dart';

import '../entities/sign_in_req_entity.dart';

abstract class IAuthStrategy {
  Future<ExecuteGuard<void>> signIn({required SignInReqEntity signInReq});
}
