import 'package:flutter/material.dart';

class CoverageAreaSelector extends StatelessWidget {
  final List<String> areas;
  final ValueChanged<String> onRemoved;
  final VoidCallback onAdd;

  const CoverageAreaSelector({
    super.key,
    required this.areas,
    required this.onRemoved,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('مناطق التغطية', style: TextStyle(fontSize: 16)),
        Wrap(
          spacing: 8,
          children: [
            ...areas.map((a) => Chip(
              label: Text(a),
              onDeleted: () => onRemoved(a),
            )),
            IconButton(icon: Icon(Icons.add), onPressed: onAdd),
          ],
        ),
      ],
    );
  }
}
