import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../features/auth/auth_choice/present/views/select_account_type_view.dart';
import '../../../../features/profile/present/bloc/profile_bloc.dart';
import '../../../di/dependency_injection.dart';

class AccountTypeGuard {
  static String? redirect(BuildContext context, GoRouterState state) {
    if (state.matchedLocation == '/${SelectAccountTypeView.routeName}') {
      return null;
    }

    final userType = getIt<ProfileBloc>().state.profile;

    if (userType == null) {
      return '/${SelectAccountTypeView.routeName}';
    }

    return null;
  }
}
