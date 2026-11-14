import 'package:error_handler/error_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:green/features/auth/sign_in/data/strategies/auth_strategy.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/sign_in_req_entity.dart';

@Named('anonymous_auth')
@Injectable(as: AuthStrategy)
class AnonymousStrategy implements AuthStrategy {
  final FirebaseAuth _auth;

  @factoryMethod
  AnonymousStrategy(this._auth);

  @override
  Future<ExecuteGuard<void>> signIn({
    required SignInReqEntity signInReq,
  }) async {
    try {
      final userCredential = await _auth.signInAnonymously();
      if (userCredential.user == null) {
        return const ExecuteGuard.failure(
          errorInfo: ErrorInfo(
            title: 'فشل',
            message: 'فشل في الدخول كزائر',
          ),
        );
      }
      return const ExecuteGuard.success(data: null);
    } catch (error, st) {
      return ExecuteGuard.failure(
        errorInfo: ErrorHandler.handle(error: error, stackTrace: st),
      );
    }
  }
}
