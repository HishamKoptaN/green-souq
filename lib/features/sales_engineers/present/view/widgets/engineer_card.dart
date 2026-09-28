import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

class EngineerCard extends StatelessWidget {
  final SalesEngineerEntity salesEngineer;

  const EngineerCard({super.key, required this.salesEngineer});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: .circular(12.r),
          border: .all(color: context.colorScheme.outline),
        ),
        child: Column(
          spacing: 2.h,
          children: [
            Row(
              spacing: 2.w,
              children: [
                Container(
                  padding: .all(6.r),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer,
                    borderRadius: .circular(12.r),
                  ),
                  child: Icon(
                    Icons.person,
                    color: context.colorScheme.primary,
                    size: 24.r,
                  ),
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      salesEngineer.name,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: .bold,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 2.h,
                        children: [
                          Text(
                            salesEngineer.name,
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: .bold,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                          Row(
                            spacing: 1.w,
                            children: [
                              Icon(Icons.star, size: 14.r, color: Colors.amber),
                              Text(
                                '${salesEngineer.rating}',
                                style: context.textTheme.bodySmall?.copyWith(
                                  fontWeight: .bold,
                                  color: context.colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Text(
                    // salesEngineer.role,
                    // style: context.textTheme.bodyMedium?.copyWith(
                    // color: context.colorScheme.tertiary,
                    // ),
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            FilledButton.icon(
              onPressed: () {
                {}
              },
              icon: Icon(Icons.chat, size: 16.r),
              label: Text('أتصال'),
            ),
          ],
        ),
      );
    }
  }
}
