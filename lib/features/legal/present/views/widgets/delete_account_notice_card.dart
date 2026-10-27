import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class DeleteAccountNoticeCard extends StatelessWidget {
  const DeleteAccountNoticeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12.r),
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer.withValues(alpha: 0.1),
        border: Border(
          right: BorderSide(color: context.colorScheme.primary, width: 4.w),
        ),
        borderRadius: .circular(4.r),
      ),
      child: Text(
        'ملاحظة هامة: وفقاً لسياسات متجر جوجل بلاي الحديثة، نتيح لك طلب حذف حسابك والبيانات المرتبطة به بشكل كامل ودون الحاجة لتسجيل الدخول إلى التطبيق.',
        style: context.textTheme.bodyMedium?.copyWith(
          height: 1.6,
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
