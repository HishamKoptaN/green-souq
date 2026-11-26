import 'package:flutter/material.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';

/// عنوان قسم الإشعارات
class SectionLabelWidget extends StatelessWidget {
  final String text;

  const SectionLabelWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 16, bottom: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: TrText(
          text,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
