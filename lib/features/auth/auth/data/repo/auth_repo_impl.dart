import 'package:error_handler/error_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/utils/database/shared_pref_helper.dart';
import '../../../../../core/utils/services/auth_storage_service.dart';
import '../../../../../core/utils/services/token_service.dart';
import '../../domain/repo/auth_repo.dart';
import '../datasources/auth_api.dart';
import '../models/exchange_token_req_body_model.dart';

@Singleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _fa;
  final AuthApi _api;
  final TokenService _tokenService;
  final AuthStorageService _authStorageService;
  AuthRepoImpl(
    this._fa,
    this._api,
    this._tokenService,
    this._authStorageService,
  );

  @override
  Future<ExecuteGuard<void>> checkFirebase() async {
    try {
      if (_fa.currentUser == null) {
        return const ExecuteGuard.failure(errorInfo: ErrorInfo(message: ''));
      }
      return const ExecuteGuard.success(data: null);
    } catch (e) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> check() async {
    try {
      await _api.check();
      return const ExecuteGuard.success(data: null);
    } catch (e) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> authToken() async {
    try {
      final result = await _api.authToken(
        exchangeToken: ExchangeTokenReqBodyModel(
          idToken: await _tokenService.getIdToken(forceRefresh: true),
        ),
      );
      final token = result.token.trim();
      if (token.isEmpty) {
        return const ExecuteGuard.failure(
          errorInfo: ErrorInfo(message: 'فشل في الحصول على توكن الدخول'),
        );
      }
      await _authStorageService.storeJwtToken(token);
      return const ExecuteGuard.success(data: null);
    } catch (e) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> signOut() async {
    try {
      await _api.logout();
    } catch (_) {
      // Backend logout is best-effort; local sign-out must always continue.
    }
    try {
      await _fa.signOut();
      await SharedPrefHelper.clearAllSecuredData();
      await SharedPrefHelper.clearAllData();
      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      return ExecuteGuard.failure(
        errorInfo: ErrorHandler.handle(error: e, stackTrace: st),
      );
    }
  }
}
