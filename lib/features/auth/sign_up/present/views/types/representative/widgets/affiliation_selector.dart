import 'package:flutter/material.dart';

class CommercialAffiliationSelector extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const CommercialAffiliationSelector({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('نوع الانتماء التجاري', style: TextStyle(fontSize: 16)),
        Row(
          children: [
            Radio<String>(
              value: 'corporate',
              groupValue: selectedValue,
              onChanged: onChanged,
            ),
            Text('شركة'),
            Radio<String>(
              value: 'independent',
              groupValue: selectedValue,
              onChanged: onChanged,
            ),
            Text('مستقل'),
          ],
        ),
      ],
    );
  }
}
