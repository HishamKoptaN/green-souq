import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

class UsersMapWidget extends StatelessWidget {
  const UsersMapWidget({super.key, required this.onShowToast});

  final ValueChanged<String> onShowToast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: .circular(12.r),
      ),
      child: Center(
        child: Text(
          'خريطة المستخدمين',
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
