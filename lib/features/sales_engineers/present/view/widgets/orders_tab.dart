import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersTab extends StatelessWidget {
  final void Function(String) showToast;

  const OrdersTab({super.key, required this.showToast});

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
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {
                  {
                    showToast('إنشاء طلبية ميدانية جديدة...');
                  }
                },
                icon: Icon(Icons.add, size: 16.r),
                label: Text('طلبية جديدة', style: TextStyle(fontSize: 12.sp)),
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
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: const Color(0xFFDEEBE1)),
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
                    Text(
                      orderNumber,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      supplier,
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: const Color(0xFF3F4940),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF7FF7AA),
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF00522C),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    {
                      showToast('عرض تفاصيل الطلبية');
                    }
                  },
                  child: Text(
                    'عرض التفاصيل',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
