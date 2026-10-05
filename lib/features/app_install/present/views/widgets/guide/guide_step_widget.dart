import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/theme/extensions/theme_ext.dart';

class GuideStepWidget extends StatelessWidget {
  const GuideStepWidget({
    super.key,
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
              color: context.colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                stepNumber,
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.onSecondaryContainer,
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
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  description,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
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
