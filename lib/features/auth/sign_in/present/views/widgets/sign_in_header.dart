import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.h,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colorScheme.primaryContainer.withValues(alpha: 0.1),
            shape: .circle,
          ),
          child: Icon(
            Icons.eco,
            size: 44.r,
            color: context.colorScheme.primary,
          ),
        ),
        Row(
          mainAxisAlignment: .center,
          children: [
            Text(
              'GreenSouq',
              style: context.textTheme.headlineSmall?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
            Padding(
              padding: .symmetric(horizontal: 6.w),
              child: Text(
                '|',
                style: context.textTheme.headlineSmall?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            Text(
              'السوق الاخضر',
              style: context.textTheme.headlineSmall?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
        Text(
          "الشبكة الزراعية المتكاملة للتجارة والأعمال",
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
