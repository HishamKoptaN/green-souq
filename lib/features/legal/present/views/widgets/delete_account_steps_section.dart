import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class DeleteAccountStepsSection extends StatelessWidget {
  const DeleteAccountStepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1. خطوات طلب الحذف',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'يمكنك تقديم طلب حذف الحساب بإحدى الطرق التالية:',
          style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: .only(right: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• النموذج الإلكتروني أدناه: أدخل رقم الهاتف أو البريد الإلكتروني المسجل في التطبيق وسنقوم بمعالجة طلبك.',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
              SizedBox(height: 4.h),
              Text(
                '• المراسلة عبر البريد الإلكتروني: أرسل بريداً إلكترونياً إلى support@greensouq.app من البريد المسجل بحسابك واكتب في موضوع الرسالة "طلب حذف الحساب".',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
