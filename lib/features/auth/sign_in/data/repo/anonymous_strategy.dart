import 'package:error_handler/error_handler.dart';
import 'package:green/features/auth/sign_in/domain/repo/I_auth_strategy.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/sign_in_req_entity.dart';

@Named('anonymous_auth')
@Injectable(as: IAuthStrategy)
class AnonymousStrategy implements IAuthStrategy {
  @override
  Future<ExecuteGuard<void>> signIn({
    required SignInReqEntity signInReq,
  }) async {
    throw UnimplementedError();
  }
}
