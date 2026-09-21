import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/core/theme/core/extensions/theme_ext.dart';

InputDecorationTheme inputDecorationTheme({required BuildContext context}) {
  return InputDecorationTheme(
    filled: true,
    fillColor: context.colorScheme.surfaceContainerLowest,
    hintStyle: context.textTheme.bodyMedium?.copyWith(
      color: context.colorScheme.outline,
    ),
    contentPadding: .symmetric(vertical: 14.h, horizontal: 16.w),
    border: OutlineInputBorder(borderRadius: .circular(8.r), borderSide: .none),
  );
}
