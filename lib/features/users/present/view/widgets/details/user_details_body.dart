import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/users/domain/entities/user_entity.dart';
import 'package:green/features/users/present/view/widgets/details/user_hero_card.dart';
import 'package:green/features/users/present/view/widgets/details/user_reputation_card.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/make_phone_call.dart';

class UserDetailsBody extends StatelessWidget {
  const UserDetailsBody({
    super.key,
    required this.user,
    required this.onAppendNote,
    required this.onSubmit,
  });

  final UserEntity user;
  final ValueChanged<String> onAppendNote;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        spacing: 8.h,
        children: [
          UserHeroCard(
            user: user,
            onCallPressed: () {
              makePhoneCall(user.phone);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('جاري الاتصال بالمستخدم...')),
              );
            },
            onChatPressed: () {
              openWhatsApp(user.phone);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('فتح محادثة واتساب...')),
              );
            },
            onDirectionsPressed: () {
              openGoogleMaps(user.latitude ?? '', user.longitude ?? '');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('فتح خرائط الملاحة للموقع...')),
              );
            },
          ),
          UserReputationCard(user: user),
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
