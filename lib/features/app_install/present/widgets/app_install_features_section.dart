import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
                    color: Theme.of(context).colorScheme.primary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'لماذا تثبت تطبيق السوق الأخضر الآن؟',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.star,
                      size: 14.sp,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'مزايا حصرية',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondaryContainer,
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
              _FeatureCard(
                icon: LucideIcons.mapPin,
                title: 'رادار المحلات والمزارع المجاورة بالـ GPS',
                description: 'استكشف أسواق الجملة، المزارع المعتمدة، وموردي الأسمدة والمعدات الأقرب لنطاقك الجغرافي بلحظات وتتبع توفر البضائع مباشرة.',
              ),
              SizedBox(height: 12),
              _FeatureCard(
                icon: LucideIcons.handshake,
                title: 'إدارة صفقات وعقود الجملة الفورية',
                description: 'إبرام صفقات توريد آمنة، توثيق الفواتير، ومتابعة شحنات الأسمدة الكبرى مباشرة من لوحة تحكم هاتفك المحمول.',
              ),
              SizedBox(height: 12),
              _FeatureCard(
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

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.04),
              blurRadius: 4.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                icon,
                size: 22.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
