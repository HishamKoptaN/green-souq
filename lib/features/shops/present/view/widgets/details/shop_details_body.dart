import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_hero_card.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_rating_card.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_reputation_card.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/make_phone_call.dart';

class ShopDetailsBody extends StatelessWidget {
  const ShopDetailsBody({
    super.key,
    required this.shop,
    required this.onAppendNote,
    required this.onSubmit,
  });

  final ShopEntity shop;
  final ValueChanged<String> onAppendNote;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        spacing: 8.h,
        children: [
          ShopHeroCard(
            shop: shop,
            onCallPressed: () {
              makePhoneCall(shop.phone);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('جاري الاتصال بالمحل...')),
              );
            },
            onChatPressed: () {
              openWhatsApp(shop.phone);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('فتح محادثة واتساب...')),
              );
            },
            onDirectionsPressed: () {
              openGoogleMaps(shop.latitude ?? '', shop.longitude ?? '');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('فتح خرائط الملاحة للموقع...')),
              );
            },
          ),
          ShopReputationCard(shop: shop),
          ShopRatingCard(
            shop: shop,
            notesController: TextEditingController(text: ''),
            onAppendNote: onAppendNote,
            onSubmit: onSubmit,
          ),
          Row(
            mainAxisAlignment: .center,
            spacing: 2.w,
            children: [
              Icon(
                Icons.verified,
                size: 16.r,
                color: context.colorScheme.primary,
              ),
              Text(
                'يظهر التقييم بهويتك المهنية المعتمدة لتعزيز أمان وموثوقية السوق',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
