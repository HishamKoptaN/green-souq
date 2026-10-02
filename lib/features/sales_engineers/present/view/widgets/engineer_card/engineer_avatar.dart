import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/custom_image.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

class EngineerAvatar extends StatelessWidget {
  const EngineerAvatar({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;

  @override
  Widget build(BuildContext context) {
    {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  context.colorScheme.primary,
                  context.colorScheme.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: .circular(16.r),
            ),
            alignment: .center,
            child: salesEngineer.avatar.isNotEmpty
                ? ClipRRect(
                    borderRadius: .circular(16.r),
                    child: CustomImage(
                      path: salesEngineer.avatar,
                      width: 56.r,
                      height: 56.r,
                      fit: .cover,
                    ),
                  )
                : Text(
                    salesEngineer.name.isNotEmpty
                        ? salesEngineer.name.substring(
                            0,
                            min(2, salesEngineer.name.length),
                          )
                        : 'م',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                      fontWeight: .bold,
                    ),
                  ),
          ),
          Positioned(
            bottom: -2.r,
            left: -2.r,
            child: Container(
              width: 16.r,
              height: 16.r,
              decoration: BoxDecoration(
                color: context.colorScheme.secondary,
                shape: .circle,
                border: Border.all(
                  color: context.colorScheme.surface,
                  width: 2.w,
                ),
              ),
              alignment: .center,
              child: Container(
                width: 6.r,
                height: 6.r,
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  shape: .circle,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  int min(int a, int b) => a < b ? a : b;
}
