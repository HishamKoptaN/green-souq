import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/extensions/theme_ext.dart';

class DrawerPullBar extends StatelessWidget {
  const DrawerPullBar({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: .only(top: 12.h, bottom: 4.h),
        child: Center(
          child: Container(
            width: 48.w,
            height: 6.h,
            decoration: BoxDecoration(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
              borderRadius: .circular(9999.r),
            ),
          ),
        ),
      );
    }
  }
}
