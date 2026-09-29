import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenCreatePostAuthorRow extends StatelessWidget {
  const GreenCreatePostAuthorRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              clipBehavior: .none,
              children: [
                Container(
                  width: 44.r,
                  height: 44.r,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: colorScheme.onPrimary,
                    size: 26.r,
                  ),
                ),
                Positioned(
                  bottom: -2.r,
                  right: -2.r,
                  child: Container(
                    height: 18.r,
                    width: 18.r,
                    decoration: BoxDecoration(
                      color: colorScheme.secondaryContainer,
                      shape: .circle,
                    ),
                    child: Icon(
                      Icons.verified,
                      color: colorScheme.onSecondaryContainer,
                      size: 14.r,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Text(
                      'م. خالد الفهد',
                      style: textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHigh,
                        borderRadius: .circular(6.r),
                      ),
                      child: Text(
                        'مهندس زراعي',
                        style: textTheme.labelSmall?.copyWith(
                          fontWeight: .w600,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.public,
                        size: 14.r,
                        color: colorScheme.primary,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'الجميع في السوق الأخضر',
                        style: textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      // SizedBox(width: 2.w),
                      //Icon(
                      //  Icons.expand_more,
                      //  size: 14.r,
                      //  color: colorScheme.onSurfaceVariant,
                      //),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
