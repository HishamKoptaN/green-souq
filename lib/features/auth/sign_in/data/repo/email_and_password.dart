import 'package:firebase_auth/firebase_auth.dart';
import 'package:green/features/auth/sign_in/domain/entities/sign_in_req_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/repo/I_auth_strategy.dart';

@Named('email_and_password')
@Injectable(as: IAuthStrategy)
class EmailAndPassword implements IAuthStrategy {
  final FirebaseAuth _auth;
  @factoryMethod
  EmailAndPassword(this._auth);
  @override
  Future<ExecuteGuard<void>> signIn({
    required SignInReqEntity signInReq,
  }) async {
    try {
      await _auth
          .signInWithEmailAndPassword(
            email: signInReq.email?.value ?? '',
            password: signInReq.password?.value ?? '',
          )
          .then((userCredential) async {
            if (userCredential.user != null) {
              return const ExecuteGuard.success(data: null);
            } else {
              return const ExecuteGuard.failure(
                errorInfo: ErrorInfo(
                  title: 'فشل',
                  message: 'فشل في تسجيل الدخول',
                ),
              );
            }
          });
      return const .success(data: null);
    } catch (error, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(error: error, stackTrace: st),
      );
    }
  }
}
