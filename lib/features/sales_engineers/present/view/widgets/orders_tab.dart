import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersTab extends StatelessWidget {
  final void Function(String) showToast;

  const OrdersTab({super.key, required this.showToast});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'سجل الطلبيات والعروض الميدانية',
                style: textTheme.titleMedium,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors.primary,
                  foregroundColor: colors.onPrimary,
                ),
                onPressed: () {
                  {
                    showToast('إنشاء طلبية ميدانية جديدة...');
                  }
                },
                icon: Icon(Icons.add, size: 16.r),
                label: Text('طلبية جديدة', style: textTheme.labelMedium),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildOrderCard(
            context,
            orderNumber: 'طلبية #ORD-8492',
            supplier: 'المورد: شركة النماء الزراعية',
            status: 'في الطريق 🚚',
            total: 'المجموع: 4,200 ر.س',
          ),
        ],
      );
    }
  }

  Widget _buildOrderCard(
    BuildContext context, {
    required String orderNumber,
    required String supplier,
    required String status,
    required String total,
  }) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: colors.outlineVariant),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(orderNumber, style: textTheme.titleSmall),
                    Text(
                      supplier,
                      style: textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    status,
                    style: textTheme.labelSmall?.copyWith(
                      color: colors.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  total,
                  style: textTheme.titleSmall?.copyWith(color: colors.primary),
                ),
                TextButton(
                  onPressed: () {
                    {
                      showToast('عرض تفاصيل الطلبية');
                    }
                  },
                  child: Text('عرض التفاصيل', style: textTheme.labelMedium),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
