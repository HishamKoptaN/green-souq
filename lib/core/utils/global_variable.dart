import 'package:flutter/material.dart';

abstract class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static BuildContext? get currentContext {
    return navState.currentContext;
  }

  GlobalVariable._();
}
