import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import 'features/feature_card_widget.dart';

class AppInstallFeaturesSection extends StatelessWidget {
  const AppInstallFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.verified,
                    color: context.colorScheme.primary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'لماذا تثبت تطبيق السوق الأخضر الآن؟',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onSurface,
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
          SizedBox(height: 12.h),
          Column(
            children: const [
              FeatureCardWidget(
                icon: LucideIcons.mapPin,
                title: 'رادار المحلات والمزارع المجاورة بالـ GPS',
                description: 'استكشف أسواق الجملة، المزارع المعتمدة، وموردي الأسمدة والمعدات الأقرب لنطاقك الجغرافي بلحظات وتتبع توفر البضائع مباشرة.',
              ),
              SizedBox(height: 12),
              FeatureCardWidget(
                icon: LucideIcons.handshake,
                title: 'إدارة صفقات وعقود الجملة الفورية',
                description: 'إبرام صفقات توريد آمنة، توثيق الفواتير، ومتابعة شحنات الأسمدة الكبرى مباشرة من لوحة تحكم هاتفك المحمول.',
              ),
              SizedBox(height: 12),
              FeatureCardWidget(
                icon: LucideIcons.trendingUp,
                title: 'أسعار المحاصيل وأسواق التصدير لحظياً',
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
