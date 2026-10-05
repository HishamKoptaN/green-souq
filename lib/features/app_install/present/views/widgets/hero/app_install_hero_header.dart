import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'hero_badge_item.dart';

class AppInstallHeroHeader extends StatelessWidget {
  const AppInstallHeroHeader({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Card(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
        child: Padding(
          padding: .all(16.r),
          child: Column(
            children: [
              Stack(
                alignment: .bottomCenter,
                children: [
                  Container(
                    width: 96.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHigh,
                      borderRadius: .circular(12.r),
                    ),
                    child: Padding(
                      padding: .all(4.r),
                      child: Icon(
                        Icons.eco,
                        size: 48.sp,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 10.h),
                    child: Chip(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.verified,
                            size: 14.sp,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            'موثق رسمياً',
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                'السوق الأخضر',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 4.h),
              Text(
                'GreenLink • AgriTech B2B',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'المنظومة الرقمية الشاملة لربط محلات المواد الزراعية، المزارع النموذجية، وموردي الجملة في شبكة توريد ذكية واحدة.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: 12.h),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.w,
                runSpacing: 8.h,
                children: [
                  HeroBadgeItem(
                    icon: Icons.security,
                    label: 'آمن ومشفّر',
                    iconColor: Theme.of(context).colorScheme.primary,
                  ),
                  HeroBadgeItem(
                    icon: Icons.memory,
                    label: '18 ميجابايت',
                    iconColor: Theme.of(context).colorScheme.secondary,
                  ),
                  HeroBadgeItem(
                    icon: Icons.bolt,
                    label: 'إصدار V1.0.4',
                    iconColor: Theme.of(context).colorScheme.tertiary,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
