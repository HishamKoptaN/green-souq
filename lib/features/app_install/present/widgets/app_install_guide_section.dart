import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/theme/extensions/theme_ext.dart';
import 'guide/guide_step_widget.dart';

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
                color: context.colorScheme.secondary,
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                'خطوات التثبيت السريع لملف APK',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLowest,
              borderRadius: .circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.shadow.withValues(alpha: 0.04),
                  blurRadius: 4.r,
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            child: Column(
              children: const [
                GuideStepWidget(
                  stepNumber: '1',
                  title: 'بدء التحميل',
                  description: 'اضغط على زر "تحميل التطبيق مباشرة" أعلاه وانتظر اكتمال تنزيل الملف (app-prod-release.apk).',
                ),
                SizedBox(height: 16),
                GuideStepWidget(
                  stepNumber: '2',
                  title: 'السماح بالمصادر الخارجية',
                  description: 'افتح الإشعار أو الملف واضغط إعدادات عند الطلب للسماح بالتثبيت من المتصفح (مرة واحدة فقط).',
                ),
                SizedBox(height: 16),
                GuideStepWidget(
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
                color: context.colorScheme.outline,
              ),
              SizedBox(width: 6.w),
              Text(
                'هل واجهت مشكلة أثناء التثبيت؟',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
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
                  style: context.textTheme.labelSmall?.copyWith(
                    color: context.colorScheme.primary,
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
