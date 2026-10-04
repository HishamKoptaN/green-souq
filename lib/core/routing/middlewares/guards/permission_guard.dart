import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class PermissionGuard {
  static String? redirect({
    required BuildContext context,
    required GoRouterState state,
    required String permission,
  }) {
    // return '/${OrdersView.routeName}';
  }
}
