import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final String supplier;
  final String status;
  final Color statusColor;
  final Color statusTextColor;
  final String details;
  final String total;
  final String actionText;
  final Function(String) onToast;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.supplier,
    required this.status,
    required this.statusColor,
    required this.statusTextColor,
    required this.details,
    required this.total,
    required this.actionText,
    required this.onToast,
  });

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.02),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: .circular(8.r),
                      ),
                      child: Icon(
                        Icons.local_shipping,
                        size: 18.r,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'طلبية $orderId',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                        Text(
                          supplier,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      color: statusTextColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Container(
              padding: .all(8.r),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: .circular(8.r),
              ),
              child: Text(
                details,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  total,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                TextButton(
                  onPressed: () {
                    onToast('إجراء: $actionText');
                  },
                  child: Text(
                    actionText,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
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
