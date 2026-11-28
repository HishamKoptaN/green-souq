import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/role_intro_benefit.dart';
import 'role_intro_icon.dart';

/// بطاقة ميزة واحدة داخل الشاشة التعريفية.
class RoleIntroBenefitCard extends StatelessWidget {
  const RoleIntroBenefitCard({super.key, required this.benefit});

  final RoleIntroBenefit benefit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: .all(14.r),
        child: Row(
          crossAxisAlignment: .start,
          spacing: 12.w,
          children: [
            FaIcon(
              iconFor(benefit.icon),
              size: 22.sp,
              color: theme.colorScheme.primary,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 4.h,
                children: [
                  Text(benefit.title, style: theme.textTheme.titleMedium),
                  Text(benefit.body, style: theme.textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
