import 'package:flutter/material.dart';

class TermsCheckboxField extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  const TermsCheckboxField({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          key: const Key('terms_checkbox'),
          value: value,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            'أوافق على شروط الاستخدام التجاري و سياسة حماية البيانات الزراعية لمنظومة GreenLink.',
          ),
        ),
      ],
    );
  }
}
