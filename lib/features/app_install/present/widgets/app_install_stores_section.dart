import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AppInstallStoresSection extends StatefulWidget {
  const AppInstallStoresSection({super.key});

  @override
  State<AppInstallStoresSection> createState() => _AppInstallStoresSectionState();
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
                    color: Theme.of(context).colorScheme.primary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'المتاجر الرسمية',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ],
              ),
              Container(
                padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.rocket,
                      size: 14.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'جاري النشر والاعتماد',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
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
              _StoreCard(
                title: 'Google Play Store',
                subtitle: 'لأجهزة أندرويد اللوحية والهواتف',
                statusText: '⏳ جاري الاعتماد',
                buttonText: googleNotified ? '✓ سيتم تنبيهك عند التوفر على Google Play' : 'تنبيهي فور الإطلاق في Google Play',
                isNotified: googleNotified,
                onNotify: () {
                  setState(() {
                    googleNotified = true;
                  });
                },
                iconData: LucideIcons.play,
              ),
              SizedBox(height: 12.h),
              _StoreCard(
                title: 'Apple App Store',
                subtitle: 'لأجهزة iPhone و iPad',
                statusText: '⏳ قيد المراجعة',
                buttonText: iosNotified ? '✓ سيتم تنبيهك عند التوفر على App Store' : 'تنبيهي فور الإطلاق في App Store',
                isNotified: iosNotified,
                onNotify: () {
                  setState(() {
                    iosNotified = true;
                  });
                },
                iconData: LucideIcons.apple,
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      );
    }
  }
}

class _StoreCard extends StatelessWidget {
  const _StoreCard({
    required this.title,
    required this.subtitle,
    required this.statusText,
    required this.buttonText,
    required this.isNotified,
    required this.onNotify,
    required this.iconData,
  });

  final String title;
  final String subtitle;
  final String statusText;
  final String buttonText;
  final bool isNotified;
  final VoidCallback onNotify;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        width: double.infinity,
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLowest,
          borderRadius: .circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.04),
              blurRadius: 4.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: .circular(8.r),
                      ),
                      child: Icon(
                        iconData,
                        size: 22.sp,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: .circular(9999.r),
                  ),
                  child: Text(
                    statusText,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isNotified
                      ? Theme.of(context).colorScheme.secondaryContainer
                      : Theme.of(context).colorScheme.surfaceContainerHigh,
                  foregroundColor: isNotified
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Theme.of(context).colorScheme.onSurface,
                  elevation: 0,
                  padding: .symmetric(vertical: 10.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(8.r),
                  ),
                ),
                onPressed: onNotify,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isNotified ? LucideIcons.check : LucideIcons.bell,
                      size: 16.sp,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      buttonText,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
