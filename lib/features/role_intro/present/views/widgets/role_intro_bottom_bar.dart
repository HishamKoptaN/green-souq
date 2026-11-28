import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../domain/entities/role_intro_slide.dart';

/// زر المتابعة وتلميح الدخول أسفل الشاشة التعريفية.
class RoleIntroBottomBar extends StatelessWidget {
  const RoleIntroBottomBar({
    super.key,
    required this.slide,
    required this.enabled,
    required this.onContinue,
  });

  final RoleIntroSlide slide;
  final bool enabled;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8.h,
      children: [
        FilledButton.icon(
          onPressed: enabled ? onContinue : null,
          icon: const FaIcon(FontAwesomeIcons.arrowLeft, size: 16),
          iconAlignment: .end,
          label: TrText(slide.actionLabel),
        ),
        if (slide.loginHint != null)
          Center(
            child: TrText(
              slide.loginHint!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
