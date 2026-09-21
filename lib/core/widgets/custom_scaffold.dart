import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScaffold extends StatelessWidget {
  PreferredSizeWidget? appBar;
  Widget? drawer;
  Widget? body;
  Color? backgroundColor;
  bool? resizeToAvoidBottomInset;
  CustomScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: .symmetric(horizontal: 10.w, vertical: 10.h),
            child: body,
          ),
        ),
      ),
    );
  }
}
