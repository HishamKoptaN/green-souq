import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../../../onboarding/present/bloc/onboarding_bloc.dart';
import '../../../../../onboarding/present/views/onboarding_view.dart';

class ReplayOnboardingTile extends StatelessWidget {
  const ReplayOnboardingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(LucideIcons.compass, color: context.colorScheme.primary),
      title: TrText('إعادة عرض الإرشادات'),
      subtitle: TrText('تصفح دليل التطبيق من البداية'),
      trailing: Icon(
        LucideIcons.chevronRight,
        color: context.colorScheme.outline,
      ),
      onTap: () {
        getIt<OnboardingBloc>().add(const .replay());
        context.go('/${OnboardingView.routeName}');
      },
    );
  }
}
