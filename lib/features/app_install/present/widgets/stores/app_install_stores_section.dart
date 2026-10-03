import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import 'store_card_widget.dart';

class AppInstallStoresSection extends StatefulWidget {
  const AppInstallStoresSection({super.key});

  @override
  State<AppInstallStoresSection> createState() =>
      _AppInstallStoresSectionState();
}

class _AppInstallStoresSectionState extends State<AppInstallStoresSection> {
  bool googleNotified = false;
  bool iosNotified = false;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.store,
                    color: context.colorScheme.primary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'المتاجر الرسمية',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.rocket,
                      size: 14.sp,
                      color: context.colorScheme.tertiary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'جاري النشر والاعتماد',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Column(
            children: [
              StoreCardWidget(
                title: 'Google Play Store',
                subtitle: 'لأجهزة أندرويد اللوحية والهواتف',
                statusText: '⏳ جاري الاعتماد',
                buttonText: googleNotified
                    ? '✓ سيتم تنبيهك عند التوفر على Google Play'
                    : 'تنبيهي فور الإطلاق في Google Play',
                isNotified: googleNotified,
                onNotify: () {
                  setState(() {
                    googleNotified = true;
                  });
                },
                icon: FaIcon(
                  FontAwesomeIcons.googlePlay,
                  size: 20.sp,
                  color: context.colorScheme.primary,
                ),
              ),
              SizedBox(height: 12.h),
              StoreCardWidget(
                title: 'Apple App Store',
                subtitle: 'لأجهزة iPhone و iPad',
                statusText: '⏳ قيد المراجعة',
                buttonText: iosNotified
                    ? '✓ سيتم تنبيهك عند التوفر على App Store'
                    : 'تنبيهي فور الإطلاق في App Store',
                isNotified: iosNotified,
                onNotify: () {
                  setState(() {
                    iosNotified = true;
                  });
                },
                icon: FaIcon(
                  FontAwesomeIcons.appStore,
                  size: 20.sp,
                  color: context.colorScheme.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      );
    }
  }
}
