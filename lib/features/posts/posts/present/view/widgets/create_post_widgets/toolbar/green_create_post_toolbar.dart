import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenCreatePostToolbar extends StatelessWidget {
  const GreenCreatePostToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'إثراء المنشور:',
          style: textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 8.h),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 2.8,
          children: [
            _buildToolbarItem(
              context: context,
              title: 'إضافة صور',
              subtitle: 'PNG, JPG حتى 15MB',
              icon: Icons.photo_library,
              iconColor: colorScheme.secondary,
              iconBgColor: colorScheme.secondaryContainer.withValues(
                alpha: 0.5,
              ),
              trailingIcon: Icons.add,
              onTap: () {},
            ),
            _buildToolbarItem(
              context: context,
              title: 'فيديو ميداني',
              subtitle: 'MP4 حتى دقيقتين',
              icon: Icons.videocam,
              iconColor: colorScheme.primary,
              iconBgColor: colorScheme.primaryContainer.withValues(alpha: 0.2),
              trailingIcon: Icons.add,
              onTap: () {},
            ),
            _buildToolbarItem(
              context: context,
              title: 'وسم الموضوع',
              subtitle: 'تصنيف نوع الزراعة',
              icon: Icons.tag,
              iconColor: colorScheme.tertiary,
              iconBgColor: colorScheme.tertiaryContainer.withValues(alpha: 0.3),
              trailingIcon: Icons.chevron_left,
              onTap: () {},
            ),
            _buildToolbarItem(
              context: context,
              title: 'الموقع الزراعي',
              subtitle: 'القصيم، بريدة',
              icon: Icons.location_on,
              iconColor: colorScheme.onSurface,
              iconBgColor: colorScheme.surfaceContainerHighest,
              trailingIcon: Icons.tune,
              trailingColor: colorScheme.primary,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildToolbarItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required IconData trailingIcon,
    Color? trailingColor,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        padding: .all(8.r),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerLow,
          borderRadius: .circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 32.r,
                  height: 32.r,
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: .circular(8.r),
                  ),
                  child: Icon(icon, size: 18.r, color: iconColor),
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      title,
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              trailingIcon,
              size: 18.r,
              color: trailingColor ?? colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
