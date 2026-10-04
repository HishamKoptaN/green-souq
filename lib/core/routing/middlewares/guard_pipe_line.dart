import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef GuardFunction =
    String? Function(BuildContext context, GoRouterState state);

abstract class GuardPipeline {
  static String? apply(
    BuildContext context,
    GoRouterState state,
    List<GuardFunction> guards,
  ) {
    for (final guard in guards) {
      final redirectPath = guard(context, state);
      if (redirectPath != null) {
        return redirectPath;
      }
    }
    return null;
  }
}
