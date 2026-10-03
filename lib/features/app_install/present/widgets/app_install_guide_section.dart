import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInstallGuideSection extends StatelessWidget {
  const AppInstallGuideSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                LucideIcons.helpCircle,
                color: Theme.of(context).colorScheme.secondary,
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                'خطوات التثبيت السريع لملف APK',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLowest,
              borderRadius: .circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.04),
                  blurRadius: 4.r,
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            child: Column(
              children: const [
                _GuideStep(
                  stepNumber: '1',
                  title: 'بدء التحميل',
                  description: 'اضغط على زر "تحميل التطبيق مباشرة" أعلاه وانتظر اكتمال تنزيل الملف (app-prod-release.apk).',
                ),
                SizedBox(height: 16),
                _GuideStep(
                  stepNumber: '2',
                  title: 'السماح بالمصادر الخارجية',
                  description: 'افتح الإشعار أو الملف واضغط إعدادات عند الطلب للسماح بالتثبيت من المتصفح (مرة واحدة فقط).',
                ),
                SizedBox(height: 16),
                _GuideStep(
                  stepNumber: '3',
                  title: 'التثبيت والمباشرة',
                  description: 'انقر على "تثبيت" وسجل الدخول لحسابك للبدء في إدارة وتداول المحاصيل الزراعية فوراً.',
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.headphones,
                size: 16.sp,
                color: Theme.of(context).colorScheme.outline,
              ),
              SizedBox(width: 6.w),
              Text(
                'هل واجهت مشكلة أثناء التثبيت؟',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
              SizedBox(width: 4.w),
              InkWell(
                onTap: () async {
                  final uri = Uri.parse('mailto:support@greenlink.ag');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
                child: Text(
                  'فريق الدعم الفني',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
        ],
      );
    }
  }
}

class _GuideStep extends StatelessWidget {
  const _GuideStep({
    required this.stepNumber,
    required this.title,
    required this.description,
  });

  final String stepNumber;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 26.w,
            height: 26.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                stepNumber,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
              ),
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
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(height: 2.h),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        height: 1.5.h,
                      ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
