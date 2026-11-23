import 'package:go_router/go_router.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';

import '../../features/app_install/present/views/app_install_view.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/auth_choice/present/views/select_account_type_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/complaints/present/screens/complaints_screen.dart';
import '../../features/suggestions/present/screens/suggestions_screen.dart';
import '../../features/profile/present/views/edited_profile/edit_profile_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/profile/present/views/profile/profile_view.dart';

class AppRouterRedirect {
  static const Set<String> public = {
    '/${AuthView.routeName}',
    '/${AppInstallView.routeName}',
    '/${SelectAccountTypeView.routeName}',
    '/${SignInView.routeName}',
    '/${SignUpView.routeName}',
    '/${ForgotPassView.routeName}',
  };
  static const Set<String> authenticatedOnly = {
    '/${NotificationsView.routeName}',
    '/${ProfileView.routeName}',
    '/${EditProfileView.routeName}',
    '/${ChangePassView.routeName}',
    ComplaintsScreen.routeName,
    SuggestionsScreen.routeName,
  };

  /// The sign-up route is parameterised (`/sign-up/:userType`), so its matched
  /// location never equals the bare `/sign-up` entry in [public].
  static bool isPublic(GoRouterState state) {
    return public.contains(state.matchedLocation) ||
        state.matchedLocation.startsWith('/${SignUpView.routeName}/');
  }
}
