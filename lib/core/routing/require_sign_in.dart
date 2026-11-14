import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../di/dependency_injection.dart';
import '../widgets/forms/translated_text.dart';

bool get isSignedIn {
  return getIt<AuthBloc>().state.maybeWhen(
    authenticated: () {
      return true;
    },
    orElse: () {
      return false;
    },
  );
}

bool requireSignIn(BuildContext context) {
  if (isSignedIn) {
    return true;
  }
  showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: const TrText('تسجيل الدخول مطلوب'),
        content: const TrText('يمكنك التصفح كزائر. سجّل دخولك للنشر والتفاعل.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
            child: const TrText('متابعة التصفح'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.go('/${SignInView.routeName}');
            },
            child: const TrText('تسجيل الدخول'),
          ),
        ],
      );
    },
  );
  return false;
}
