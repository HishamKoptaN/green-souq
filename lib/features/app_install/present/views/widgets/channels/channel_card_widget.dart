import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChannelCardWidget extends StatelessWidget {
  const ChannelCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.badge,
    required this.subtitle,
    required this.buttonLabel,
    required this.onPressed,
    this.isPrimary = false,
  });

  final IconData icon;
  final String title;
  final String badge;
  final String subtitle;
  final String buttonLabel;
  final VoidCallback onPressed;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    {
      return Card(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(12.r),
        ),
        child: Padding(
          padding: .all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: isPrimary
                          ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
                          : Theme.of(context).colorScheme.surfaceContainer,
                      borderRadius: .circular(12.r),
                    ),
                    child: Icon(
                      icon,
                      size: 24.sp,
                      color: isPrimary
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 8.w,
                          runSpacing: 4.h,
                          children: [
                            Text(
                              title,
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Chip(
                              backgroundColor: isPrimary
                                  ? Theme.of(context).colorScheme.secondaryContainer
                                  : Theme.of(context).colorScheme.surfaceContainer,
                              label: Text(
                                badge,
                                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                      color: isPrimary
                                          ? Theme.of(context).colorScheme.onSecondaryContainer
                                          : Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isPrimary
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.surfaceContainerHigh,
                    foregroundColor: isPrimary
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurface,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(4.r),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(isPrimary ? Icons.download : Icons.arrow_back, size: 18.sp),
                      SizedBox(width: 8.w),
                      Text(buttonLabel),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
