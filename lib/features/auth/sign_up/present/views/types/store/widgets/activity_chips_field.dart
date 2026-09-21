import 'package:flutter/material.dart';

class ActivityChipsField extends StatelessWidget {
  final List<String> selectedActivities;
  final Function(String) onActivitySelected;

  const ActivityChipsField({
    super.key,
    required this.selectedActivities,
    required this.onActivitySelected,
  });

  @override
  Widget build(BuildContext context) {
    final activities = ['بذور وتقاوي معتمدة', 'أسمدة ومغذيات ورقية', 'مبيدات ووقاية مزروعات', 'شبكات ومستلزمات ري', 'شتلات وبيوت محمية'];
    return Wrap(
      spacing: 8,
      children: activities.map((activity) {
        final isSelected = selectedActivities.contains(activity);
        return FilterChip(
          key: Key('activity_chip_$activity'),
          label: Text(activity),
          selected: isSelected,
          onSelected: (_) => onActivitySelected(activity),
        );
      }).toList(),
    );
  }
}
