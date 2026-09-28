import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReportItem extends StatelessWidget {
  const ReportItem({
    super.key,
    required this.pathIcon,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String pathIcon;
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            SvgPicture.asset(pathIcon, width: 24, height: 24),
            const SizedBox(width: 12),
            Expanded(child: Text(title)),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
