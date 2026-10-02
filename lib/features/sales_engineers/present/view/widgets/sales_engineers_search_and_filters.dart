import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/forms/custom_search_widget.dart';

class SalesEngineersSearchAndFilters extends StatelessWidget {
  const SalesEngineersSearchAndFilters({
    super.key,
    required this.onSearchChanged,
  });

  final ValueChanged<String> onSearchChanged;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        spacing: 10.h,
        children: [
          CustomSearchWidget(
            initialValue: '',
            hintText: 'ابحث بالاسم، المحافظة، أو التخصص الزراعي...',
            onChanged: onSearchChanged,
          ),
          SingleChildScrollView(
            scrollDirection: .horizontal,
            child: Row(
              spacing: 8.w,
              children: [
                Container(
                  padding: .symmetric(horizontal: 14.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary,
                    borderRadius: .circular(9999.r),
                  ),
                  child: Text(
                    'الكل (38)',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                      fontWeight: .bold,
                    ),
                  ),
                ),
                Container(
                  padding: .symmetric(horizontal: 14.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surface,
                    borderRadius: .circular(9999.r),
                    border: Border.all(
                      color: context.colorScheme.outlineVariant,
                    ),
                  ),
                  child: Row(
                    spacing: 6.w,
                    children: [
                      Container(
                        width: 8.r,
                        height: 8.r,
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondary,
                          shape: .circle,
                        ),
                      ),
                      Text(
                        'المتاحون الآن',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
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
