import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

import '../../../../../core/utils/make_phone_call.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../../../core/widgets/forms/translated_text.dart';

class EngineerCard extends StatelessWidget {
  final SalesEngineerEntity salesEngineer;

  const EngineerCard({super.key, required this.salesEngineer});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(12.r),
        border: .all(color: context.colorScheme.outline.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        children: [
          Row(
            crossAxisAlignment: .center,
            spacing: 4.w,
            children: [
              _buildAvatarSection(context),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 2.h,
                  children: [
                    Row(
                      spacing: 6.w,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: .min,
                            children: [
                              Flexible(
                                child: TrText(
                                  salesEngineer.name,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(
                                        fontWeight: .bold,
                                        color: context.colorScheme.onSurface,
                                      ),
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Icon(
                                Icons.verified,
                                size: 16.r,
                                color: context.colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary.withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: .circular(16.r),
                          ),
                          child: Row(
                            spacing: 4.w,
                            children: [
                              Icon(Icons.star, size: 14.r, color: Colors.amber),
                              Text(
                                salesEngineer.rating > 0
                                    ? salesEngineer.rating.toStringAsFixed(1)
                                    : '0.0',
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: context.colorScheme.onSurface,
                                  fontWeight: .bold,
                                ),
                              ),
                              if (salesEngineer.ratingsCount > 0)
                                Text(
                                  '(${salesEngineer.ratingsCount})',
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: context.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (salesEngineer.userType != null &&
                        salesEngineer.userType!.isNotEmpty)
                      Text(
                        salesEngineer.userType!,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    //Row(
                    //  spacing: 2.w,
                    //  children: [
                    //    Icon(
                    //      Icons.location_on,
                    //      size: 13.r,
                    //      color: context.colorScheme.primary,
                    //    ),
                    //    Text(
                    //      'يبعد ${salesEngineer.distance} متر عنك (في برنشت)',
                    //      style: context.textTheme.bodySmall?.copyWith(
                    //        color: context.colorScheme.primary,
                    //        fontWeight: .w800,
                    //      ),
                    //    ),
                    //  ],
                    //),
                  ],
                ),
              ),
            ],
          ),
          Gap(8.h),
          Divider(
            thickness: 2.h,
            color: context.colorScheme.primary.withValues(alpha: 0.1),
          ),
          Row(
            spacing: 12.w,
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: salesEngineer.phone.isNotEmpty
                      ? () async {
                          try {
                            await makePhoneCall(salesEngineer.phone);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('جاري الاتصال...'),
                                ),
                              );
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('تعذر إجراء المكالمة'),
                                ),
                              );
                            }
                          }
                        }
                      : null,
                  style: FilledButton.styleFrom(
                    minimumSize: Size(.infinity, 26.h),
                    maximumSize: Size(.infinity, 26.h),
                  ),
                  icon: Icon(Icons.call, size: 16.r),
                  label: const Text('اتصال'),
                ),
              ),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: salesEngineer.phone.isNotEmpty
                      ? () async {
                          try {
                            await openWhatsApp(salesEngineer.phone);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('فتح واتساب...')),
                              );
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('تعذر فتح واتساب'),
                                ),
                              );
                            }
                          }
                        }
                      : null,
                  style: FilledButton.styleFrom(
                    minimumSize: Size(.infinity, 34.h),
                    maximumSize: Size(.infinity, 34.h),
                  ),
                  icon: FaIcon(FontAwesomeIcons.whatsapp, size: 16.r),
                  label: const Text('واتساب'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatarSection(BuildContext context) {
    if (salesEngineer.avatar.isNotEmpty) {
      return Container(
        padding: .all(2.r),
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: .circular(12.r),
          border: .all(
            color: context.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
        child: ClipRRect(
          borderRadius: .circular(10.r),
          child: CustomImage(
            path: salesEngineer.avatar,
            height: 50.r,
            width: 50.r,
            fit: .cover,
          ),
        ),
      );
    }

    return Stack(
      children: [
        Container(
          width: 50.r,
          height: 50.r,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            shape: .circle,
          ),
          alignment: .center,
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            width: 12.r,
            height: 12.r,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: .circle,
              border: .all(color: context.colorScheme.surface, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
