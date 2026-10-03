import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import 'pwa_card_widget.dart';

class AppInstallPwaSection extends StatelessWidget {
  const AppInstallPwaSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.smartphone,
                    color: context.colorScheme.primary,
                    size: 20.r,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'تثبيت فوري على أجهزة أخرى',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(vertical: 4.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    Icon(
                      LucideIcons.repeat,
                      size: 14.r,
                      color: context.colorScheme.primary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'متعدد المنصات',
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: .w500,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          const PwaCardWidget(),
        ],
      );
    }
  }
}
