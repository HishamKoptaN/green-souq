import 'package:go_router/go_router.dart' show RouteBase;

import '../../../features/auth/auth/present/views/auth_view.dart';
import '../../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../../features/auth/sign_up/present/views/sign_up_view.dart';
import '../../../features/instructions/present/view/instructions_view.dart';
import '../../language/view/select_language.dart';
import '../../../features/notifications/present/view/notifications_view.dart';
import '../../../features/profile/present/views/profile_view.dart';
import '../../../features/splash/start_view.dart';
import '../../material3.dart';
import '../utils/route_builder.dart' show RouteBuilder;

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      RouteBuilder.goRoute(
        routeName: Material3View.routeName,
        builder: (context, state) {
          return const Material3View();
        },
      ),
      RouteBuilder.goRoute(
        routeName: StartView.routeName,
        builder: (context, state) {
          return const StartView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: AuthView.routeName,
        builder: (context, state) {
          return const AuthView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: InstructionsView.routeName,
        builder: (context, state) {
          return const InstructionsView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) {
          return const SelectLanguageView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SelectAccountTypeView.routeName,
        builder: (context, state) {
          return const SelectAccountTypeView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) {
          return const ForgotPassView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SignInView.routeName,
        builder: (context, state) {
          return const SignInView();
        },
      ),
      RouteBuilder.goRoute(
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
      RouteBuilder.goRoute(
        routeName: ProfileView.routeName,
        builder: (context, state) {
          return const ProfileView();
        },
      ),

      RouteBuilder.goRoute(
        routeName: NotificationsView.routeName,
        builder: (context, state) {
          return const NotificationsView();
        },
      ),

      RouteBuilder.goRoute(
        routeName: ChangePassView.routeName,
        builder: (context, state) {
          return const ChangePassView();
        },
      ),
    ];
    return routes;
  }
}
