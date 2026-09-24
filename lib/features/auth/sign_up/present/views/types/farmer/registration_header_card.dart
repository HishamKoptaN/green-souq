import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';

class RegistrationHeaderCard extends StatelessWidget {
  const RegistrationHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: .circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Container(
                padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLowest,
                  borderRadius: .circular(20.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 8.r,
                      height: 8.r,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer,
                        shape: .circle,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "الإنتاج الزراعي • حساب مزارع",
                      style: context.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              Container(
                padding: .all(6.r),
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: .circular(12.r),
                ),
                child: Icon(Icons.grass, color: context.colorScheme.onPrimary),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            "تسجيل حساب مزارع / صاحب مزرعة",
            style: context.textTheme.headlineSmall,
          ),
          SizedBox(height: 8.h),
          Text(
            "انضم لشبكة السوق الاخضر لتسويق محاصيلك مباشرة، وطلب مستلزمات الإنتاج والتسميد بأفضل أسعار الجملة.",
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
