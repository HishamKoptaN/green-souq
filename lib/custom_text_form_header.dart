import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormHeader extends StatelessWidget {
  const CustomTextFormHeader({
    super.key,
    required this.icon,
    required this.label,
    this.tag,
  });
  final String label;
  final IconData icon;
  final String? tag;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 16.r, color: theme.colorScheme.primary),
            SizedBox(width: 8.w),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: .bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        if (tag != null)
          Text(
            tag ?? '',
            style: theme.textTheme.labelSmall?.copyWith(
              color: tag == 'مطلوب'
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outline,
            ),
          ),
      ],
    );
  }
}
