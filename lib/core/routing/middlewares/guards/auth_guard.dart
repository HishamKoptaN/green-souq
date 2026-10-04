import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../di/dependency_injection.dart';

class AuthGuard {
  static String? redirect(BuildContext context, GoRouterState state) {
    return getIt<AuthBloc>().state.maybeMap(
      authenticated: (_) {
        return null;
      },
      orElse: () {
        return '/${SignInView.routeName}';
      },
    );
  }
}
