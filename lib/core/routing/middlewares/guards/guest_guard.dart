import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../../di/dependency_injection.dart';

class GuestGuard {
  static String? redirect(BuildContext context, GoRouterState state) {
    return getIt<AuthBloc>().state.maybeMap(
      authenticated: (_) {
        return null;
      },
      orElse: () {
        return null;
      },
    );
  }
}
