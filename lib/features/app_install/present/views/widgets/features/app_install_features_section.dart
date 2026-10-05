import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:green/core/theme/extensions/theme_ext.dart';

import 'feature_card_widget.dart';

class AppInstallFeaturesSection extends StatelessWidget {
  const AppInstallFeaturesSection({super.key});

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
                    LucideIcons.verified,
                    color: context.colorScheme.primary,
                    size: 20.r,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'لماذا تثبت تطبيق السوق الأخضر الآن؟',
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.secondaryContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.star,
                      size: 14.sp,
                      color: context.colorScheme.onSecondaryContainer,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'مزايا حصرية',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSecondaryContainer,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Column(
            spacing: 8.h,
            children: const [
              FeatureCardWidget(
                icon: LucideIcons.badgeCheck,
                title: 'الوصول للمحلات والمزارع ومهندسين المبيعات الموثقة',
                description: 'يمكن لمهندسين المبيعات والمحلات والشركات الوصول للأشخاص والأماكن الموثقين ذات التقييم الجيد.',
              ),
              FeatureCardWidget(
                icon: LucideIcons.mapPin,
                title: 'دليل المحلات والمزارع المجاورة بالـ GPS',
                description: 'استكشف المحلات ، المزارع ، مهندسين المبيعات ، المزارع المعتمدة، وموردي الأسمدة والمعدات الأقرب لنطاقك الجغرافي بلحظات وتتبع توفر البضائع مباشرة.',
              ),
              FeatureCardWidget(
                icon: LucideIcons.trendingUp,
                title: 'أسعار المنتجات الزراعية وألاسواق لحظياً',
                description: 'تنبيهات فورية بأسعار البورصة الزراعية، مؤشرات الطلب المحلي، ومقارنات أسعار السلع بين مختلف المحافظات.',
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      );
    }
  }
}
