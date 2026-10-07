import 'dart:developer';

import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
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
      if (kIsWeb) {
        final GoogleAuthProvider googleProvider = GoogleAuthProvider();
        await _auth.signInWithPopup(googleProvider);
      } else {
        final googleAccount = await _googleSignIn.authenticate();
        final googleAuth = googleAccount.authentication;
        await _auth.signInWithCredential(
          GoogleAuthProvider.credential(
            idToken: googleAuth.idToken,
          ),
        );
      }
      return .success(data: null);
    } catch (e, st) {
      log('Google Sign-In Error: $e', error: e, stackTrace: st);
      if (!kIsWeb) {
        await FirebaseCrashlytics.instance.recordError(
          e,
          st,
          reason: 'Google Sign-In failed: $e',
        );
      }
      return .failure(
        errorInfo: ErrorHandler.handle(error: e, stackTrace: st),
      );
    }
  }
}
