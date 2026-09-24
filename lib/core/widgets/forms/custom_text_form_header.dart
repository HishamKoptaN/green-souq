import 'package:flutter/material.dart';

import '../../theme/extensions/theme_ext.dart';

class CustomTextFormHeader extends StatelessWidget {
  const CustomTextFormHeader({
    super.key,
    this.icon,
    required this.labelText,
    this.tag,
  });
  final Widget? icon;
  final String labelText;
  final String? tag;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            icon ?? const SizedBox.shrink(),
            Text(
              labelText,
              style: context.theme.textTheme.labelSmall?.copyWith(
                fontWeight: .bold,
                color: context.theme.colorScheme.onSurface,
              ),
            ),
            Text(
              " * ",
              style: context.theme.textTheme.labelSmall?.copyWith(
                fontWeight: .bold,
                color: context.theme.colorScheme.error,
              ),
            ),
          ],
        ),
        if (tag != null)
          Text(
            tag ?? '',
            style: context.theme.textTheme.labelSmall?.copyWith(
              color: tag == 'مطلوب'
                  ? context.theme.colorScheme.primary
                  : context.theme.colorScheme.outline,
            ),
          ),
      ],
    );
  }
}
