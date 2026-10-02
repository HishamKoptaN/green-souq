import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

import 'engineer_card/engineer_actions.dart';
import 'engineer_card/engineer_avatar.dart';
import 'engineer_card/engineer_info.dart';

class EngineerCard extends StatelessWidget {
  const EngineerCard({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: .circular(16.r),
          border: Border.all(
            color: context.colorScheme.outlineVariant.withValues(alpha: 0.9),
          ),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withValues(alpha: 0.04),
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              crossAxisAlignment: .start,
              spacing: 12.w,
              children: [
                EngineerAvatar(salesEngineer: salesEngineer),
                Expanded(child: EngineerInfo(salesEngineer: salesEngineer)),
              ],
            ),
            Gap(12.h),
            Divider(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.6),
              height: 1.h,
            ),
            Gap(12.h),
            EngineerActions(salesEngineer: salesEngineer),
          ],
        ),
      );
    }
  }
}
