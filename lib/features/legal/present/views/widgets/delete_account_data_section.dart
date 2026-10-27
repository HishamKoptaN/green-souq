import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class DeleteAccountDataSection extends StatelessWidget {
  const DeleteAccountDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '3. البيانات التي يتم حذفها مقابل البيانات التي يتم الاحتفاظ بها',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'البيانات التي يتم حذفها نهائياً:',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Padding(
          padding: .only(right: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• الاسم الشخصي ومعلومات الملف الشخصي والصورة الشخصية.',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
              Text(
                '• رقم الهاتف وعنوان البريد الإلكتروني.',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
              Text(
                '• عناوين الشحن ومواقع التوصيل المحفوظة.',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
              Text(
                '• سجل الطلبات والأنشطة والتفضيلات الشخصية داخل التطبيق.',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'البيانات التي قد يتم الاحتفاظ بها (إن وجدت) والسبب:',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Padding(
          padding: .only(right: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• بيانات المعاملات المالية والفواتير الضريبية: يتم الاحتفاظ بها للفترة القانونية المحددة وفقاً للتشريعات المالية والضريبية المحلية المعمول بها (مثل سجلات المبيعات والمدفوعات).',
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          '4. فترة الاحتفاظ ومعالجة الطلب',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'تتم مراجعة ومعالجة طلبات حذف الحساب خلال مدة أقصاها 30 يوماً من تاريخ تقديم الطلب، وسيتم إرسال تأكيد عبر البريد الإلكتروني أو رسالة نصية عند اكتمال الحذف النهائي لكافة البيانات القابلة للحذف.',
          style: context.textTheme.bodyMedium?.copyWith(height: 1.6),
        ),
      ],
    );
  }
}
