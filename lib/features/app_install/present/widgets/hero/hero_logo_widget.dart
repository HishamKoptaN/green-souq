import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';

class HeroLogoWidget extends StatelessWidget {
  const HeroLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            width: 96.w,
            height: 96.h,
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
              child: Image.asset(
                'assets/logos/logo_solid.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: -4.h,
            left: -4.w,
            child: Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: context.colorScheme.secondary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: context.colorScheme.shadow.withValues(alpha: 0.1),
                    blurRadius: 4.r,
                  ),
                ],
              ),
              child: Icon(
                LucideIcons.check,
                size: 14.sp,
                color: context.colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      );
    }
  }
}
