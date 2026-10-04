import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ProfileMetricsWidget extends StatelessWidget {
  const ProfileMetricsWidget({
    super.key,
    required this.postsCount,
    required this.followersCount,
  });
  final int postsCount;
  final int followersCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: context.colorScheme.outlineVariant),
        ),
      ),
      child: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          _buildItem(context, postsCount.toString(), 'المنشورات', false),
          _buildItem(context, followersCount.toString(), 'المتابعون', false),
        ],
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    String value,
    String label,
    bool isPrimary,
  ) {
    return Column(
      children: [
        Text(
          value,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: isPrimary
                ? context.colorScheme.primary
                : context.colorScheme.onSurface,
          ),
        ),
        Gap(2.h),
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}
