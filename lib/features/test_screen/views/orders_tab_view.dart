import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/order_card.dart';

class OrdersTabView extends StatelessWidget {
  final Function(String) onToast;

  const OrdersTabView({super.key, required this.onToast});

  @override
  Widget build(BuildContext context) {
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'سجل الطلبيات والعروض الميدانية',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  onToast('إنشاء طلبية ميدانية جديدة...');
                },
                icon: Icon(Icons.add, size: 16.r),
                label: Text('طلبية جديدة', style: TextStyle(fontSize: 12.sp)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          OrderCard(
            orderId: '#ORD-8492',
            supplier: 'المورد: شركة النماء الزراعية',
            status: 'في الطريق 🚚',
            statusColor: Theme.of(context).colorScheme.primaryContainer,
            statusTextColor: Theme.of(context).colorScheme.onPrimaryContainer,
            details: '50 شيكارة يوريا 46% + 20 لتر مبيد حشري ديسيس',
            total: 'المجموع: 4,200 ر.س',
            actionText: 'عرض التفاصيل',
            onToast: onToast,
          ),
        ],
      );
    }
  }
}
