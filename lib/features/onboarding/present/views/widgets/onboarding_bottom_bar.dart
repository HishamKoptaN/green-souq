import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';

class OnboardingBottomBar extends StatelessWidget {
  const OnboardingBottomBar({
    super.key,
    required this.count,
    required this.currentIndex,
    required this.onNext,
  });

  final int count;
  final int currentIndex;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final isLast = currentIndex == count - 1;
    return Column(
      mainAxisSize: .min,
      spacing: 14.h,
      children: [
        Row(
          mainAxisAlignment: .center,
          spacing: 6.w,
          children: [
            for (var index = 0; index < count; index++)
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: index == currentIndex ? 20.w : 6.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: index == currentIndex
                      ? context.colorScheme.primary
                      : context.colorScheme.onSurface.withValues(alpha: 0.4),
                  borderRadius: .circular(999.r),
                ),
              ),
          ],
        ),
        FilledButton(
          onPressed: onNext,
          child: TrText(isLast ? 'ابدأ' : 'التالي'),
        ),
      ],
    );
  }
}
