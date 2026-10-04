import 'package:go_router/go_router.dart';
import 'package:green/features/app_install/present/views/app_install_view.dart';

import '../../../features/auth/auth/present/views/auth_view.dart';
import '../../../features/auth/auth_choice/present/views/select_account_type_view.dart';
import '../../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../../features/auth/sign_up/present/views/sign_up_view.dart';

import 'package:green/features/shops/present/view/shops_view.dart';

import '../../../features/home/present/view/home.dart';
import '../../../features/instructions/present/view/instructions_view.dart';
import '../../../features/profile/present/views/edited_profile/edit_profile_view.dart';
import '../../../features/shops/present/view/details/shop_details_view.dart';
import '../../../features/sales_engineers/present/view/sales_engineers_body.dart';
import '../../../scaffold_with_nav_bar.dart';
import '../../language/view/select_language.dart';
import '../../../features/notifications/present/view/notifications_view.dart';
import '../../../features/profile/present/views/profile/profile_view.dart';
import '../../../features/splash/start_view.dart';
import '../../material3.dart';
import '../utils/route_builder.dart';

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      goRoute(
        routeName: AppInstallView.routeName,
        builder: (context, state) {
          return const AppInstallView();
        },
      ),
      goRoute(
        routeName: Material3View.routeName,
        builder: (context, state) {
          return const Material3View();
        },
      ),
      goRoute(
        routeName: StartView.routeName,
        builder: (context, state) {
          return const StartView();
        },
      ),
      goRoute(
        routeName: AuthView.routeName,
        builder: (context, state) {
          return const AuthView();
        },
      ),
      goRoute(
        routeName: InstructionsView.routeName,
        builder: (context, state) {
          return const InstructionsView();
        },
      ),
      goRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) {
          return const SelectLanguageView();
        },
      ),
      goRoute(
        routeName: SelectAccountTypeView.routeName,
        builder: (context, state) {
          return SelectAccountTypeView();
        },
      ),
      goRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) {
          return const ForgotPassView();
        },
      ),
      goRoute(
        routeName: SignInView.routeName,
        builder: (context, state) {
          return const SignInView();
        },
      ),
      goRoute(
        routeName: '${SignUpView.routeName}/:userType',
        builder: (context, state) {
          final role = UserType.values.firstWhere(
            (e) {
              return e.name == state.pathParameters['userType'];
            },
            orElse: () {
              return .farmer;
            },
          );
          return SignUpView(userType: role);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              goRoute(
                routeName: HomeView.routeName,
                builder: (context, state) {
                  return const HomeView();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              goRoute(
                routeName: ShopsView.routeName,
                builder: (context, state) {
                  return const ShopsView();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              goRoute(
                routeName: SalesEngineersBody.routeName,
                builder: (context, state) {
                  return SalesEngineersBody();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              goRoute(
                routeName: ProfileView.routeName,
                builder: (context, state) {
                  return ProfileView();
                },
              ),
            ],
          ),
        ],
      ),
      goRoute(
        routeName: EditProfileView.routeName,
        builder: (context, state) {
          return EditProfileView();
        },
      ),
      goRoute(
        routeName: '${ShopDetailsView.routeName}/:id',
        builder: (context, state) {
          return ShopDetailsView(
            id: int.parse(state.pathParameters['id'] ?? '0'),
          );
        },
      ),
      goRoute(
        routeName: NotificationsView.routeName,
        builder: (context, state) {
          return const NotificationsView();
        },
      ),
      goRoute(
        routeName: ChangePassView.routeName,
        builder: (context, state) {
          return const ChangePassView();
        },
      ),
    ];
    return routes;
  }
}
