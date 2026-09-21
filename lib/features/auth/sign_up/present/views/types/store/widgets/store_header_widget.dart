import 'package:flutter/material.dart';

import '../../../../../../../../core/theme/core/extensions/theme_ext.dart';

class StoreHeaderWidget extends StatelessWidget {
  const StoreHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: context.colorScheme.surfaceContainerLowest,
      shape: RoundedRectangleBorder(borderRadius: .circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Text(
                        'تسجيل محل تجاري / معرض',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: .bold,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'B2B',
                          style: context.textTheme.labelSmall?.copyWith(
                            fontWeight: .bold,
                            color: context.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'أدخل بيانات محلك لتتمكن من الشراء بأسعار الجملة المباشرة، جدولة التوريد، وربط الفواتير المعتمدة.',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.storefront,
                color: context.colorScheme.primary,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
