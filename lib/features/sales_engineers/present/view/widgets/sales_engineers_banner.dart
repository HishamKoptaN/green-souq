import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class NetworkBannerCard extends StatelessWidget {
  final int activeEngineersCount;
  final String coveragePercentage;

  const NetworkBannerCard({
    super.key,
    this.activeEngineersCount = 24,
    this.coveragePercentage = '100%',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .topLeft,
          end: .bottomRight,
          colors: [
            context.colorScheme.primary.withValues(alpha: .5),
            context.colorScheme.surface,
            context.colorScheme.surface,
          ],
        ),
        borderRadius: .circular(16.r),
        border: .all(color: context.colorScheme.surface, width: 1),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.surface.withValues(alpha: .05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: -24.r,
            bottom: -24.r,
            child: Container(
              width: 96.r,
              height: 96.r,
              decoration: BoxDecoration(
                shape: .circle,
                color: context.colorScheme.surface.withValues(alpha: .1),
                boxShadow: [
                  BoxShadow(
                    color: context.colorScheme.surface.withValues(alpha: .1),
                    blurRadius: 24.r,
                    spreadRadius: 10.r,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: .all(16.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Container(
                            padding: .symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: context.colorScheme.surface,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: context.colorScheme.surface,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: .min,
                              children: [
                                Container(
                                  width: 6.r,
                                  height: 6.r,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    shape: .circle,
                                  ),
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                  'شبكة التوريد والاستشارات الزراعية',
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontWeight: .bold,
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'مهندسين ومندوبين المبيعات والتوزيع',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: .bold,
                              height: 1.25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 44.w,
                      height: 44.w,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: context.colorScheme.primary.withValues(
                              alpha: .5,
                            ),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.engineering_outlined,
                        color: context.colorScheme.surface,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'تواصل مباشر لطلب العينات الميدانية، الدعم الفني، ومتابعة جدول التوريد لمتاجرك ومزارعك.',
                  style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
                ),
                SizedBox(height: 14.h),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: context.colorScheme.surface.withValues(alpha: .25),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: _MetricChip(
                        icon: AvatarGlow(
                          animate: true,
                          glowColor: const Color(0xFF22C55E),
                          duration: const Duration(milliseconds: 1200),
                          repeat: true,
                          child: Container(
                            height: 10.r,
                            width: 10.r,
                            decoration: BoxDecoration(
                              color: Color(0xFF22C55E),
                              shape: .circle,
                            ),
                          ),
                        ),
                        text: '$activeEngineersCount مهندس نشط الآن',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _MetricChip(
                        icon: Icon(
                          Icons.verified_user_outlined,
                          color: Colors.green,
                        ),
                        text: 'تغطية $coveragePercentage للمراكز',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  final Widget icon;
  final String text;

  const _MetricChip({Key? key, required this.icon, required this.text})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 10.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(8.r),
        border: Border.all(color: context.colorScheme.surface),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.surface.withValues(alpha: .1),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: .min,
        children: [
          icon,
          SizedBox(width: 6.w),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.onSurface,
              ),
              overflow: .ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
