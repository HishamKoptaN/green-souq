import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/shop_details_view.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/make_phone_call.dart';

class ShopCardActions extends StatelessWidget {
  const ShopCardActions({super.key, required this.shop});
  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 8.w,
        children: [
          Expanded(
            flex: 6,
            child: SizedBox(
              height: 44.h,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.push('${ShopDetailsView.routeName}/${shop.id}');
                },
                icon: Icon(
                  LucideIcons.store,
                  size: 18.r,
                  color: context.colorScheme.onPrimary,
                ),
                label: Text(
                  'عرض التفاصيل',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(12.r),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 44.h,
              child: ElevatedButton.icon(
                onPressed: () {
                  makePhoneCall(shop.phone);
                },
                icon: Icon(
                  LucideIcons.phone,
                  size: 18.r,
                  color: context.colorScheme.primary,
                ),
                label: Text(
                  'اتصال',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.secondaryContainer
                      .withValues(alpha: 0.4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(12.r),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 44.w,
            height: 44.h,
            child: IconButton(
              onPressed: () {
                makePhoneCall(shop.phone);
              },
              icon: Icon(
                LucideIcons.messageSquare,
                size: 20.r,
                color: context.colorScheme.primary,
              ),
              style: IconButton.styleFrom(
                backgroundColor: context.colorScheme.surfaceContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(12.r),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
