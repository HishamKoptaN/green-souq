import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenCreatePostFooter extends StatelessWidget {
  final VoidCallback onPublishNow;
  final bool isLoading;
  final bool isSuccess;

  const GreenCreatePostFooter({
    super.key,
    required this.onPublishNow,
    required this.isLoading,
    required this.isSuccess,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        border: Border(
          top: BorderSide(
            color: colorScheme.surfaceContainerHigh.withValues(alpha: 0.4),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12.r,
            offset: Offset(0, -2.r),
          ),
        ],
      ),
      child: SizedBox(
        width: .infinity,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPublishNow,
          style: ElevatedButton.styleFrom(
            backgroundColor: isSuccess
                ? colorScheme.secondary
                : colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            padding: .symmetric(vertical: 14.h),
            shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
            elevation: 2,
          ),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              if (isLoading)
                SizedBox(
                  width: 20.r,
                  height: 20.r,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: colorScheme.onPrimary,
                  ),
                )
              else if (isSuccess)
                Icon(Icons.check_circle, size: 20.r)
              else
                Transform.scale(
                  scaleX: -1,
                  child: Icon(Icons.send, size: 20.r),
                ),
              SizedBox(width: 8.w),
              Text(
                isLoading
                    ? 'جارٍ النشر والمزامنة...'
                    : isSuccess
                    ? 'تم نشر المنشور بنجاح!'
                    : 'نشر المنشور الآن',
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: .bold,
                  color: colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
