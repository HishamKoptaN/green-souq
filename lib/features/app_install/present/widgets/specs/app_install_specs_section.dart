import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'spec_item_widget.dart';

class AppInstallSpecsSection extends StatelessWidget {
  const AppInstallSpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Card(
        color: context.colorScheme.surfaceContainerLowest,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(12.r),
        ),
        child: Padding(
          padding: .all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.devices,
                    color: context.colorScheme.primary,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'المواصفات التقنية ومتطلبات التشغيل',
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 8.h,
                childAspectRatio: 2.2,
                children: const [
                  SpecItemWidget(
                    label: 'أنظمة Android',
                    value: 'Android 8.0 وأحدث',
                  ),
                  SpecItemWidget(
                    label: 'أنظمة iOS / iPadOS',
                    value: 'iOS 15.0 أو أحدث',
                  ),
                  SpecItemWidget(
                    label: 'المساحة التخزينية',
                    value: '18 ميجابايت (خفيف جداً)',
                  ),
                  SpecItemWidget(
                    label: 'التحديثات والصيانة',
                    value: 'سحابية تلقائية OTA',
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Container(
                padding: .all(12.r),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainer,
                  borderRadius: .circular(8.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.verified_user,
                      color: context.colorScheme.primary,
                      size: 20.sp,
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'معايير أمان معتمدة لقطاع الأعمال B2B',
                            style: context.textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'جميع حزم التثبيت مفحوصة برمجياً، مشفرة وفق بروتوكولات SSL/TLS، ومتصلة بقواعد بيانات السجل التجاري الزراعي.',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
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
        ),
      );
    }
  }
}
