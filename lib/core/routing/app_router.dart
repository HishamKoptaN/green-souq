// ignore_for_file: unused_import
import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/auth/auth_choice/present/views/select_account_type_view.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

import '../../features/app_install/present/views/app_install_view.dart';
import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_view.dart';
import '../../features/home/present/view/home.dart';
import '../../features/profile/present/views/profile_view.dart';
import '../../features/shops/present/view/details/shop_details_view.dart';
import '../../features/shops/present/view/shops_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/sales_engineers/present/view/sales_engineers_body.dart';
import '../language/view/select_language.dart';
import '../material3.dart';
import '../utils/global_variable.dart';
import '../di/dependency_injection.dart';
import '../utils/services/firebase_messaging/firebase_messaging_service.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter createRouter(String initialLocation) {
    return GoRouter(
      initialLocation: initialLocation,
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshListenable([
        GoRouterRefreshStream(getIt<AuthBloc>().stream),
      ]),
      navigatorKey: GlobalVariable.navState,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        return getIt<AuthBloc>().state.whenOrNull(
          authenticated: () {
            if (AppRouterRedirect.public.contains(state.matchedLocation)) {
              return kReleaseMode
                  ? '/${HomeView.routeName}'
                  : kIsWeb
                  ? '/${AppInstallView.routeName}'
                  : '/${AppInstallView.routeName}';
            }
            return null;
          },
          unauthenticated: () {
            // if (kReleaseMode) {
            if (AppRouterRedirect.authenticatedOnly.contains(
                  state.matchedLocation,
                ) ||
                state.matchedLocation == '/${AuthView.routeName}') {
              return kReleaseMode
                  ? '/${SignInView.routeName}'
                  : '/${AppInstallView.routeName}';
            }
            return null;
            // } else {
            //   return '/${ShopDetailsView.routeName}';
            //   '/${SignUpView.routeName}/${UserType.farmer.name}';
            // }
          },
          failure: (_) {
            if (AppRouterRedirect.authenticatedOnly.contains(
                  state.matchedLocation,
                ) ||
                state.matchedLocation == '/${AuthView.routeName}') {
              return '/${SignInView.routeName}';
            }
            return null;
          },
        );
      },
    );
  }
}
