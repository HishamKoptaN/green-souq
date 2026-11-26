import 'package:flutter/material.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class LegalHeader extends StatelessWidget {
  const LegalHeader(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.primary,
      ),
    );
  }
}

class LegalLead extends StatelessWidget {
  const LegalLead(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.bodyLarge);
  }
}

class LegalSectionTitle extends StatelessWidget {
  const LegalSectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.titleMedium);
  }
}

class LegalParagraph extends StatelessWidget {
  const LegalParagraph(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyMedium?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
      ),
    );
  }
}
