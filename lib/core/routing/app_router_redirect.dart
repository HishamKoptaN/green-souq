import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';

import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/instructions/present/view/instructions_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/profile/present/views/profile_view.dart';

class AppRouterRedirect {
  static const Set<String> public = {
    '/${AuthView.routeName}',
    '/${SignInView.routeName}',
    '/${SignUpView.routeName}',
    '/${ForgotPassView.routeName}',
  };
  static const Set<String> authenticatedOnly = {
    '/${NotificationsView.routeName}',
    '/${InstructionsView.routeName}',
    '/${ProfileView.routeName}',
  };
}
