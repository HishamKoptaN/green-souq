import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/forms/translated_text.dart';

GoRoute goRoute({
  required String routeName,
  required Widget Function(BuildContext context, GoRouterState state) builder,
  List<RouteBase> routes = const [],
}) {
  return GoRoute(
    path: '/$routeName',
    name: routeName,
    builder: builder,
    routes: routes,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        child: builder(context, state),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        // transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(1.0, 0.0); // يبدأ من اليمين
        // const end = Offset.zero;        // ينتهي في المنتصف
        // const curve = Curves.easeInOut; // نوع المنحنى الحركي
        // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        // var offsetAnimation = animation.drive(tween);
        // return SlideTransition(
        // position: offsetAnimation,
        // child: child,
        // );
        // },
        // transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // var tween = Tween<double>(begin: 0.0, end: 1.0)
        // .chain(CurveTween(curve: Curves.easeOutBack));
        //
        // return ScaleTransition(
        // scale: animation.drive(tween),
        // child: child,
        // );
        // },
      );
    },
  );
}

Page<dynamic> errorPageBuilder(BuildContext context, GoRouterState state) {
  return NoTransitionPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(child: TrText('Page not found: ${state.uri.path}')),
    ),
  );
}
