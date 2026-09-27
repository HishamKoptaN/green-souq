import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/shop_details_view.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/make_phone_call.dart';

class ShopCardActions extends StatelessWidget {
  const ShopCardActions({super.key, required this.shop});
  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 4.w,
        textBaseline: .alphabetic,
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                makePhoneCall(shop.phone);
              },
              icon: Icon(
                Icons.call,
                size: 16.r,
                color: context.colorScheme.primary,
              ),
              label: Text(
                'اتصال',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: context.colorScheme.primaryContainer,
                side: .none,
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                context.push(ShopDetailsView.routeName, extra: shop);
              },
              label: Text(
                'عرض التفاصيل',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onPrimary,
                ),
              ),
              icon: Icon(
                Icons.storefront_outlined,
                size: 16.r,
                color: context.colorScheme.onPrimary,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
            ),
          ),
        ],
      );
    }
  }
}
