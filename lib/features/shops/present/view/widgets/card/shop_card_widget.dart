import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import 'shop_card_header.dart';
import 'shop_card_actions.dart';

import 'package:green/features/shops/domain/entities/shop_entity.dart';

class ShopCardWidget extends StatelessWidget {
  const ShopCardWidget({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(16.r),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.onSurface.withValues(alpha: 0.04),
              blurRadius: 8.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          spacing: 12.h,
          children: [
            ShopCardHeader(shop: shop),
            ShopCardActions(shop: shop),
          ],
        ),
      );
    }
  }
}
