import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenCreatePostHeader extends StatelessWidget {
  final VoidCallback onClose;
  final VoidCallback onPublish;
  final bool isLoading;

  const GreenCreatePostHeader({
    super.key,
    required this.onClose,
    required this.onPublish,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: .min,
      children: [
        Center(
          child: Container(
            height: 6.h,
            width: 48.w,
            decoration: BoxDecoration(
              color: colorScheme.outlineVariant.withValues(alpha: 0.6),
              borderRadius: .circular(3.r),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: onClose,
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerLow,
                    foregroundColor: colorScheme.onSurfaceVariant,
                  ),
                  icon: Icon(Icons.close, size: 14.r),
                ),
                SizedBox(width: 4.w),
                Text(
                  'إنشاء منشور جديد',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: .bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            FilledButton.icon(
              onPressed: isLoading ? null : onPublish,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: .circular(20.r)),
                fixedSize: Size(82.w, 36.h),
                minimumSize: Size(82.w, 30.h),
                maximumSize: Size(82.w, 30.h),
              ),
              icon: isLoading
                  ? SizedBox(
                      width: 18.r,
                      height: 18.r,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  : Icon(Icons.send, size: 14.r),
              label: Text('نشر'),
            ),
          ],
        ),
        Divider(color: colorScheme.surfaceContainerHigh, height: 1.h),
      ],
    );
  }
}
