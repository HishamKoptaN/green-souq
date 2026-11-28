import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/role_intro_slide.dart';

/// رأس الشاشة التعريفية: الشارة والعنوان والوصف.
class RoleIntroHeader extends StatelessWidget {
  const RoleIntroHeader({super.key, required this.slide});

  final RoleIntroSlide slide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: .start,
      spacing: 12.h,
      children: [
        Row(
          children: [
            FaIcon(FontAwesomeIcons.leaf, size: 20.sp, color: theme.colorScheme.primary),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(slide.badge, style: theme.textTheme.labelLarge),
            ),
          ],
        ),
        Text(slide.title, style: theme.textTheme.headlineSmall),
        Text(slide.description, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
