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
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.store,
                    size: 20.r,
                    color: context.colorScheme.primary,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'المتاجر الرسمية',
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(vertical: 4.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    Icon(LucideIcons.rocket, size: 16.r),
                    SizedBox(width: 4.w),
                    Text(
                      'جاري النشر والاعتماد',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: .w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Column(
            children: [
              StoreCardWidget(
                title: 'Google Play Store | جوجل بلاي',
                subtitle: 'لأجهزة أندرويد و التابلت ',
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
                icon: FaIcon(FontAwesomeIcons.googlePlay, size: 20.r),
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
                icon: FaIcon(FontAwesomeIcons.apple, size: 20.r),
              ),
            ],
          ),
        ],
      );
    }
  }
}
