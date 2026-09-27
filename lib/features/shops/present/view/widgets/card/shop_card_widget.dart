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
      return Card(
        child: Container(
          padding: .all(12.r),
          color: context.colorScheme.surface,
          child: Column(
            spacing: 6.h,
            children: [
              ShopCardHeader(shop: shop),
              ShopCardActions(shop: shop),
            ],
          ),
        ),
      );
    }
  }
}
