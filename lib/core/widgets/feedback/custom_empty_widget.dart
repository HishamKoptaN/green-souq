import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.height,
  });

  final Widget icon;
  final String title;
  final String subtitle;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        mainAxisSize: .max,
        children: [
          icon,
          SizedBox(height: 16.h),
          Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: .w600,
              color: context.colorScheme.onSurface.withValues(alpha: 0.8),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            subtitle,
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
            textAlign: .center,
          ),
        ],
      ),
    );
  }
}
