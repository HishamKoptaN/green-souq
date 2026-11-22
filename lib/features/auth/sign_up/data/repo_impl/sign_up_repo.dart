import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';

import 'package:error_handler/error_handler.dart';

import '../../../../../core/utils/services/token_service.dart';
import '../../domain/entities/sign_up_req_entity.dart';
import '../../domain/repo/sign_up_repo.dart';
import '../data_sources/sign_up_api.dart';
import '../mappers/sign_up_mapper.dart';

@Injectable(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final SignUpApi _api;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  SignUpRepoImpl(this._api);

  @override
  Future<ExecuteGuard<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    try {
      final email = signUpReq.email?.value ?? '';
      final password = signUpReq.password?.value ?? '';

      // Reuse an account left behind by a previous failed attempt so a retry
      // never fails with email-already-in-use.
      try {
        await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code != 'user-not-found') {
          rethrow;
        }
        await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }

      await _api.signUp(
        signUpReq.toModel(
          idToken: await getIt<TokenService>().getIdToken(forceRefresh: true),
        ),
      );

      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        st,
        reason: 'FirebaseAuthException during sign up: $e',
      );
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}
