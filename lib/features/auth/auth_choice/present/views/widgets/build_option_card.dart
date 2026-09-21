import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/core/extensions/theme_ext.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    super.key,
    required this.title,
    required this.badgeText,
    required this.subtitle,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final String badgeText;
  final String subtitle;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .all(16.roundToDouble()),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(12.r),
          border: .all(
            color: isSelected ? Colors.green.shade700 : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: .all(10.r),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: .circular(8.r),
              ),
              child: Icon(icon, color: Colors.green.shade700, size: 24.r),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.green.shade100
                              : Colors.grey.shade200,
                          borderRadius: .circular(12.r),
                        ),
                        child: Text(
                          badgeText,
                          style: context.textTheme.labelSmall?.copyWith(
                            color: isSelected
                                ? Colors.green.shade800
                                : Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subtitle,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Container(
              width: 24.r,
              height: 24.r,
              decoration: BoxDecoration(
                shape: .circle,
                color: isSelected
                    ? context.colorScheme.primary
                    : context.colorScheme.surfaceContainerHigh,
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 18.r,
                      color: context.colorScheme.onPrimary,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
