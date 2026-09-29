import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:green/features/auth/sign_in/domain/entities/sign_in_req_entity.dart';

import 'auth_strategy.dart';

@Named('google_auth')
@Injectable(as: AuthStrategy)
class GoogleAuthStrategy implements AuthStrategy {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  GoogleAuthStrategy(this._auth, this._googleSignIn);

  @override
  Future<ExecuteGuard<void>> signIn({
    required SignInReqEntity signInReq,
  }) async {
    try {
      await _googleSignIn.authenticate().then((googleAccount) async {
        await _auth.signInWithCredential(
          GoogleAuthProvider.credential(
            idToken: googleAccount.authentication.idToken,
          ),
        );
      });
      return .success(data: null);
    } catch (e, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(error: e, stackTrace: st),
      );
    }
  }
}
