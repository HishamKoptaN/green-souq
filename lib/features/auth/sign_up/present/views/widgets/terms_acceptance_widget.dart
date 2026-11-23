import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/legal/present/views/privacy_policy_view.dart';
import 'package:green/features/legal/present/views/terms_and_conditions_view.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class TermsAcceptanceWidget extends StatelessWidget {
  const TermsAcceptanceWidget({
    super.key,
    required this.accepted,
    required this.onChanged,
  });

  final bool accepted;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      children: [
        Checkbox(value: accepted, onChanged: (v) => onChanged(v ?? false)),
        Expanded(
          child: Wrap(
            crossAxisAlignment: .center,
            children: [
              Text('أوافق على ', style: context.textTheme.bodySmall),
              const _TermsLink(
                label: 'الشروط والأحكام',
                route: TermsAndConditionsView.routeName,
              ),
              Text(' و ', style: context.textTheme.bodySmall),
              const _TermsLink(
                label: 'سياسة الخصوصية',
                route: PrivacyPolicyView.routeName,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TermsLink extends StatelessWidget {
  const _TermsLink({required this.label, required this.route});

  final String label;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/$route'),
      child: Text(
        label,
        style: context.textTheme.bodySmall?.copyWith(
          color: context.colorScheme.primary,
          decoration: .underline,
        ),
      ),
    );
  }
}
