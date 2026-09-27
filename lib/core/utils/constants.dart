import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding {
  static final double defaultSize = 16.r;
  static final EdgeInsets internalChildSymmetric = .symmetric(
    vertical: 4.h,
    horizontal: 4.w,
  );
  static final EdgeInsets horizontal = .symmetric(horizontal: 16.r);
  static final EdgeInsets pagePadding = .symmetric(
    horizontal: 16.w,
    vertical: 12.h,
  );
  static final EdgeInsets all16 = .all(16.r);
}
