import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../entities/sign_in_req_entity.dart';
import '../repo/I_auth_strategy.dart';

@injectable
class SignInUseCases {
  Future<ExecuteGuard<void>> signIn({
    required IAuthStrategy strategy,
    required SignInReqEntity signInReq,
  }) async {
    return await strategy.signIn(signInReq: signInReq);
  }
}
