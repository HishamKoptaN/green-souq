import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class HeroLogoWidget extends StatelessWidget {
  const HeroLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        height: 96.h,
        width: 96.w,
        padding: .all(8.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerHigh,
          borderRadius: .circular(24.r),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withValues(alpha: 0.08),
              blurRadius: 8.r,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: .circular(16.r),
          child: Image.asset('assets/logos/full_logo.png', fit: .contain),
        ),
      );
    }
  }
}
