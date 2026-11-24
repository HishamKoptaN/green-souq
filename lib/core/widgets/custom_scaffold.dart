import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final Widget? bottomNavigationBar;
  final bool scroll;
  const CustomScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.bottomNavigationBar,
    this.scroll = false,
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
        child: scroll
            ? SingleChildScrollView(
                child: Padding(
                  padding: .symmetric(vertical: 10.h, horizontal: 6.w),
                  child: body,
                ),
              )
            : Padding(
                padding: .symmetric(vertical: 10.h, horizontal: 6.w),

                child: body,
              ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
