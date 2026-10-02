import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ShopsCategoryPillsWidget extends StatelessWidget {
  const ShopsCategoryPillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return SingleChildScrollView(
        scrollDirection: .horizontal,
        padding: .symmetric(horizontal: 16.w),
        child: Row(
          spacing: 8.w,
          children: [
            Container(
              padding: .symmetric(horizontal: 14.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: .circular(9999.r),
              ),
              child: Row(
                spacing: 6.w,
                children: [
                  Icon(
                    LucideIcons.layoutGrid,
                    size: 16.r,
                    color: context.colorScheme.onPrimary,
                  ),
                  Text(
                    'الكل (33)',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            _buildPill(context, LucideIcons.flaskConical, 'أسمدة ومخصبات'),
            _buildPill(context, LucideIcons.bug, 'مبيدات ووقاية'),
            _buildPill(context, LucideIcons.sprout, 'بذور وشتلات'),
          ],
        ),
      );
    }
  }

  Widget _buildPill(BuildContext context, IconData icon, String label) {
    {
      return Container(
        padding: .symmetric(horizontal: 14.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(9999.r),
        ),
        child: Row(
          spacing: 6.w,
          children: [
            Icon(
              icon,
              size: 16.r,
              color: context.colorScheme.onSurfaceVariant,
            ),
            Text(
              label,
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }
  }
}
