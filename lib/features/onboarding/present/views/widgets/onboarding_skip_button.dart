import 'package:flutter/material.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key, required this.onSkip});

  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onSkip,
      child: TrText(
        'تخطي',
        style: context.textTheme.labelLarge?.copyWith(
          color: context.colorScheme.primary,
        ),
      ),
    );
  }
}
