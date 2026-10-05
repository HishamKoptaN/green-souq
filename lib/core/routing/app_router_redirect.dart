import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';

import '../../features/app_install/present/views/app_install_view.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/auth_choice/present/views/select_account_type_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/instructions/present/view/instructions_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/profile/present/views/profile/profile_view.dart';
import '../../features/shops/present/view/details/shop_details_view.dart';
import '../../features/shops/present/view/shops_view.dart';

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
    '/${InstructionsView.routeName}',
    '/${ProfileView.routeName}',
    '/${ShopsView.routeName}',
    '/${ShopDetailsView.routeName}',
  };
}
