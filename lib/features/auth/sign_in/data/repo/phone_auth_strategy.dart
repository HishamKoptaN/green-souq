import 'package:error_handler/error_handler.dart';
import 'package:green/features/auth/sign_in/domain/entities/sign_in_req_entity.dart';
import 'package:green/features/auth/sign_in/domain/repo/I_auth_strategy.dart';
import 'package:injectable/injectable.dart';

@Named('phone_auth')
@Injectable(as: IAuthStrategy)
class PhoneAuthStrategy implements IAuthStrategy {
  @override
  Future<ExecuteGuard<void>> signIn({
    required SignInReqEntity signInReq,
  }) async {
    throw UnimplementedError();
  }
}
