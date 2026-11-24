import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../domain/entities/sales_engineer_entity.dart';
import 'widgets/engineer_card/engineer_actions.dart';
import 'widgets/engineer_card/engineer_avatar.dart';

class SalesEngineerDetailsView extends StatefulWidget {
  const SalesEngineerDetailsView({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;
  static const String routeName = 'user-details';

  @override
  State<SalesEngineerDetailsView> createState() =>
      _SalesEngineerDetailsViewState();
}

class _SalesEngineerDetailsViewState extends State<SalesEngineerDetailsView> {
  @override
  Widget build(BuildContext context) {
    final engineer = widget.salesEngineer;
    final details = [
      (Icons.location_on_outlined, 'العنوان', engineer.address),
      (
        Icons.near_me_outlined,
        'المسافة',
        engineer.distance.isEmpty ? '' : '${engineer.distance} كم',
      ),
      (Icons.phone_outlined, 'الهاتف', engineer.phone),
      (Icons.email_outlined, 'البريد الإلكتروني', engineer.email),
      (Icons.badge_outlined, 'رقم التعريف', '#AGR-${engineer.id}'),
    ];

    return CustomScaffold(
      appBar: AppBar(
        title: const TrText('تفاصيل هندسة المبيعات'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'رجوع',
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: .all(16.r),
        children: [
          Card(
            child: ListTile(
              leading: EngineerAvatar(salesEngineer: engineer),
              title: TrText(
                engineer.name,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: .bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: .start,
                children: [
                  TrText(
                    engineer.userType ?? '',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  Row(
                    spacing: 4.w,
                    children: [
                      Icon(
                        Icons.star,
                        size: 16.r,
                        color: context.colorScheme.primary,
                      ),
                      TrText(engineer.ratingAverage.toStringAsFixed(1)),
                      TrText('(${engineer.ratingsCount})'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          ...details.map(
            (item) => _InfoTile(icon: item.$1, label: item.$2, value: item.$3),
          ),
          const SizedBox(height: 12),
          EngineerActions(salesEngineer: engineer),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    if (value.isEmpty) return const SizedBox.shrink();
    return ListTile(
      leading: Icon(icon, color: context.colorScheme.primary),
      title: TrText(
        label,
        style: context.textTheme.bodySmall?.copyWith(
          color: context.colorScheme.onSurfaceVariant,
        ),
      ),
      subtitle: TrText(value),
    );
  }
}
