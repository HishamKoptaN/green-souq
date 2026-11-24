import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';

import 'package:error_handler/error_handler.dart';

import '../../../auth/present/bloc/auth_bloc.dart';
import '../../../../profile/present/bloc/profile_bloc.dart';
import '../entities/sign_up_req_entity.dart';
import '../repo/sign_up_repo.dart';

@injectable
class SignUpUseCases {
  final SignUpRepo repo;
  SignUpUseCases(this.repo);
  Future<ExecuteGuard<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    return await repo.signUp(signUpReq: signUpReq).then(
      (result) => result.when(
        success: (_) => _exchangeToken(),
        failure: (errorInfo) => ExecuteGuard<void>.failure(errorInfo: errorInfo),
      ),
    );
  }

  Future<ExecuteGuard<void>> completeProfile({
    required String name,
    required UserType userType,
  }) async {
    return await repo.completeProfile(name: name, userType: userType).then((
      result,
    ) async {
      return result.when(
        success: (_) => _exchangeToken(),
        failure: (errorInfo) => ExecuteGuard<void>.failure(errorInfo: errorInfo),
      );
    });
  }

  Future<ExecuteGuard<void>> _exchangeToken() async {
    final authBloc = getIt<AuthBloc>();
    final completer = Completer<void>();
    authBloc.add(AuthEvent.authToken(onComplete: completer));
    await completer.future;
    final authenticated = authBloc.state.maybeMap(
      authenticated: (_) => true,
      orElse: () => false,
    );
    if (!authenticated) {
      return const ExecuteGuard<void>.failure(
        errorInfo: ErrorInfo(message: 'فشل تبادل توكن الدخول'),
      );
    }
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
    return const ExecuteGuard<void>.success(data: null);
  }
}
