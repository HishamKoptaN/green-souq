import 'package:flutter/material.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';

/// زر تبويب فردي
class TabButtonWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const TabButtonWidget({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected
        ? context.colorScheme.surface
        : context.colorScheme.surface.withValues(alpha: 0);
    final fg = selected
        ? context.colorScheme.onSurface
        : context.colorScheme.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: TrText(
          text,
          style: context.textTheme.titleMedium?.copyWith(color: fg),
        ),
      ),
    );
  }
}
