import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../../../core/utils/make_phone_call.dart';
import '../../../../domain/entities/shop_entity.dart';

class ShopQuickActions extends StatelessWidget {
  const ShopQuickActions({super.key, required this.shop});
  final ShopEntity shop;
  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 8.w,
        children: [
          Expanded(
            child: _buildActionButton(
              context,
              icon: FaIcon(
                FontAwesomeIcons.phone,
                size: 15.r,
                color: context.colorScheme.onSurface,
              ),
              label: 'اتصال هاتفي',
              onTap: () {
                makePhoneCall(shop.phone);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('جاري الاتصال بالمحل...')),
                );
              },
              isWhatsApp: false,
            ),
          ),
          Expanded(
            child: _buildActionButton(
              context,
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 18.r,
                color: context.colorScheme.onPrimary,
              ),
              label: 'محادثة واتساب',
              onTap: () {
                openWhatsApp(shop.phone);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('فتح محادثة واتساب...')),
                );
              },
              isWhatsApp: true,
            ),
          ),
          Expanded(
            child: _buildActionButton(
              context,
              icon: FaIcon(
                FontAwesomeIcons.locationArrow,
                size: 15.r,
                color: context.colorScheme.onSurface,
              ),
              label: 'خرائط الملاحة',
              onTap: () {
                openGoogleMaps(shop.latitude ?? '', shop.longitude ?? '');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('فتح خرائط الملاحة للموقع...')),
                );
              },
              isWhatsApp: false,
            ),
          ),
        ],
      );
    }
  }

  Widget _buildActionButton(
    BuildContext context, {
    required FaIcon icon,
    required String label,
    required VoidCallback onTap,
    required bool isWhatsApp,
  }) {
    {
      return InkWell(
        onTap: onTap,
        borderRadius: .circular(12.r),
        child: Container(
          padding: .symmetric(vertical: 10.h, horizontal: 4.w),
          decoration: BoxDecoration(
            color: isWhatsApp
                ? context.colorScheme.primary.withValues(alpha: 0.1)
                : context.colorScheme.surfaceContainerLow,
            borderRadius: .circular(12.r),
            border: .all(
              color: isWhatsApp
                  ? context.colorScheme.primary.withValues(alpha: 0.3)
                  : context.colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          child: Column(
            mainAxisAlignment: .center,
            spacing: 4.h,
            children: [
              Container(
                width: 32.r,
                height: 32.r,
                decoration: BoxDecoration(
                  color: isWhatsApp
                      ? context.colorScheme.primary
                      : context.colorScheme.surfaceContainerLowest,
                  shape: .circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(alpha: 0.05),
                      blurRadius: 2.r,
                    ),
                  ],
                ),
                alignment: .center,
                child: icon,
              ),
              Text(
                label,
                style: context.textTheme.labelSmall?.copyWith(
                  color: isWhatsApp
                      ? context.colorScheme.primary
                      : context.colorScheme.onSurface,
                  fontWeight: .bold,
                  fontSize: 11.sp,
                ),
                maxLines: 1,
                overflow: .ellipsis,
              ),
            ],
          ),
        ),
      );
    }
  }
}
