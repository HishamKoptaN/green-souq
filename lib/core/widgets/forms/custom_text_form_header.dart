import 'package:flutter/material.dart';

import '../../theme/extensions/theme_ext.dart';

class CustomTextFormHeader extends StatelessWidget {
  const CustomTextFormHeader({
    super.key,
    this.icon,
    required this.labelText,
    this.tag,
    this.isRequired = true,
    this.trailing,
  });
  final Widget? icon;
  final String labelText;
  final String? tag;
  final bool isRequired;
  final Widget? trailing;
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
            if (isRequired)
              Text(
                " * ",
                style: context.theme.textTheme.labelSmall?.copyWith(
                  fontWeight: .bold,
                  color: context.theme.colorScheme.error,
                ),
              ),
          ],
        ),
        trailing ??
            (tag != null
                ? Text(
                    tag ?? '',
                    style: context.theme.textTheme.labelSmall?.copyWith(
                      color: tag == 'مطلوب'
                          ? context.theme.colorScheme.primary
                          : context.theme.colorScheme.outline,
                    ),
                  )
                : const SizedBox.shrink()),
      ],
    );
  }
}
