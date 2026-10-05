import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import 'guide_step_widget.dart';

class AppInstallGuideSection extends StatelessWidget {
  const AppInstallGuideSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Icon(
                LucideIcons.helpCircle,
                color: context.colorScheme.secondary,
                size: 20.r,
              ),
              SizedBox(width: 8.w),
              Text(
                'خطوات التثبيت السريع لملف الثبيت',
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Container(
            width: .infinity,
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
              spacing: 10.h,
              children: const [
                GuideStepWidget(
                  stepNumber: '1',
                  title: 'بدء التحميل',
                  description: 'اضغط على زر "تحميل التطبيق مباشرة" أعلاه وانتظر اكتمال تنزيل الملف',
                ),
                GuideStepWidget(
                  stepNumber: '2',
                  title: 'السماح بالمصادر الخارجية',
                  description: 'افتح الإشعار أو الملف واضغط إعدادات عند الطلب للسماح بالتثبيت من المتصفح (مرة واحدة فقط).',
                ),
                GuideStepWidget(
                  stepNumber: '3',
                  title: 'التثبيت والدخول',
                  description:
                      'انقر على "تثبيت" للبدء في الدخول لاستكشاف التطبيق.\n'
                      'يمكنك تسجيل حساب جديد، أو تسجيل الدخول مباشرةً، '
                      'أو الدخول بضغطة واحدة باستخدام حساب جوجل.',
                ),
              ],
            ),
          ),
          //SizedBox(height: 24.h),
          //Row(
          //  mainAxisAlignment: .center,
          //  children: [
          //    Icon(
          //      LucideIcons.headphones,
          //      size: 16.sp,
          //      color: context.colorScheme.outline,
          //    ),
          //    SizedBox(width: 6.w),
          //    Text(
          //      'هل واجهت مشكلة أثناء التثبيت؟',
          //      style: context.textTheme.labelSmall?.copyWith(
          //        color: context.colorScheme.onSurfaceVariant,
          //      ),
          //    ),
          //    SizedBox(width: 4.w),
          //    InkWell(
          //      onTap: () async {
          //        final uri = Uri.parse('mailto:support@greenlink.ag');
          //        if (await canLaunchUrl(uri)) {
          //          await launchUrl(uri);
          //        }
          //      },
          //      child: Text(
          //        'فريق الدعم الفني',
          //        style: context.textTheme.labelSmall?.copyWith(
          //          color: context.colorScheme.primary,
          //          fontWeight: .bold,
          //        ),
          //      ),
          //    ),
          //  ],
          //),
          SizedBox(height: 32.h),
        ],
      );
    }
  }
}
