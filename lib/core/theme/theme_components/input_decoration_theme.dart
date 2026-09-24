import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/core/theme/extensions/theme_ext.dart';

InputDecorationTheme inputDecorationTheme({required BuildContext context}) {
  return InputDecorationTheme(
    filled: true,
    fillColor: context.colorScheme.surfaceContainerLowest,
    hintStyle: context.textTheme.bodyMedium?.copyWith(
      color: context.colorScheme.outline,
    ),
    // prefixIconConstraints: BoxConstraints(
    // minHeight: 40.h,
    // minWidth: 40.w,
    // maxHeight: 40.h,
    // maxWidth: 40.w,
    // ),
    suffixIconConstraints: BoxConstraints(
      minHeight: 40.h,
      minWidth: 40.w,
      maxHeight: 40.h,
      maxWidth: 40.w,
    ),
    prefixStyle: context.textTheme.bodyMedium?.copyWith(
      fontSize: 10.r,
      color: context.colorScheme.onSurface,
    ),
    contentPadding: .symmetric(vertical: 14.h, horizontal: 16.w),
    border: OutlineInputBorder(borderRadius: .circular(8.r), borderSide: .none),
  );
}
