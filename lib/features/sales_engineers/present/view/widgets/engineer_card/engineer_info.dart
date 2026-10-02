import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

class EngineerInfo extends StatelessWidget {
  const EngineerInfo({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Expanded(
                child: Row(
                  spacing: 6.w,
                  children: [
                    Flexible(
                      child: Text(
                        salesEngineer.name,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: .bold,
                          color: context.colorScheme.onSurface,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      size: 16.r,
                      color: context.colorScheme.primary,
                    ),
                    Container(
                      padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: Colors.amber.withValues(alpha: 0.1),
                        borderRadius: .circular(8.r),
                        border: Border.all(
                          color: Colors.amber.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Row(
                        spacing: 4.w,
                        children: [
                          Icon(
                            Icons.star,
                            size: 14.r,
                            color: Colors.amber.shade700,
                          ),
                          Text(
                            salesEngineer.rating.toStringAsFixed(1),
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: .bold,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                          if (salesEngineer.ratingsCount > 0)
                            Text(
                              '(${salesEngineer.ratingsCount})',
                              style: context.textTheme.bodySmall?.copyWith(
                                color: context.colorScheme.onSurfaceVariant,
                                fontSize: 10.sp,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(2.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Expanded(
                child: Text(
                  salesEngineer.userType ?? '',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: .w600,
                  ),
                  maxLines: 1,
                  overflow: .ellipsis,
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.primaryContainer.withValues(
                    alpha: 0.15,
                  ),
                  borderRadius: .circular(8.r),
                  border: .all(
                    color: context.colorScheme.primary.withValues(alpha: 0.2),
                  ),
                ),
                child: Row(
                  spacing: 4.w,
                  children: [
                    Icon(
                      Icons.near_me,
                      size: 12.r,
                      color: context.colorScheme.primary,
                    ),
                    Text(
                      'يبعد ${salesEngineer.distance} كم',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: .bold,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(6.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                spacing: 4.w,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14.r,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  Text(
                    salesEngineer.address,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerHighest,
                  borderRadius: .circular(4.r),
                ),
                child: Text(
                  '#AGR-${salesEngineer.id}',
                  style: context.textTheme.bodySmall?.copyWith(
                    fontFamily: 'monospace',
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
