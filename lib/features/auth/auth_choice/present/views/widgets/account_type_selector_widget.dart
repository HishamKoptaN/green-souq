import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

import 'build_option_card.dart';

class AccountTypeItem {
  final UserType type;
  final String title;
  final String badgeText;
  final String subtitle;
  final IconData icon;

  const AccountTypeItem({
    required this.type,
    required this.title,
    required this.badgeText,
    required this.subtitle,
    required this.icon,
  });

  static const List<AccountTypeItem> values = [
    AccountTypeItem(
      type: UserType.shop,
      title: 'محل أدوية زراعية',
      badgeText: 'تجزئة',
      subtitle: 'بيع وشراء المنتجات',
      icon: Icons.storefront_outlined,
    ),
    AccountTypeItem(
      type: UserType.salesEngineer,
      title: 'مهندس مبيعات',
      badgeText: 'مبيعات',
      subtitle: 'تسويق المنتجات',
      icon: Icons.badge_outlined,
    ),
    AccountTypeItem(
      type: UserType.farmer,
      title: 'مزارع / صاحب مزرعة',
      badgeText: 'زراعة',
      subtitle: 'عرض المحاصيل للبيع , طلب عروض أسعار للمستلزمات الزراعية',
      icon: Icons.nature_people,
    ),
    AccountTypeItem(
      type: UserType.technicalSupportEngineer,
      title: 'مهندس الدعم الفني',
      badgeText: 'استشارات وإرشاد زراعي',
      subtitle:
          'تقديم الاستشارات والزيارات الميدانية , متابعة تشخيص الآفات وشبكات الري',
      icon: Icons.support_agent,
    ),
  ];
}

class AccountTypeSelectorWidget extends StatelessWidget {
  const AccountTypeSelectorWidget({
    super.key,
    required this.selectedType,
    required this.onChanged,
  });

  final UserType selectedType;
  final ValueChanged<UserType> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8.h,
      children: AccountTypeItem.values.map((item) {
        return OptionWidget(
          onTap: () => onChanged(item.type),
          isSelected: selectedType == item.type,
          title: item.title,
          badgeText: item.badgeText,
          subtitle: item.subtitle,
          icon: item.icon,
        );
      }).toList(),
    );
  }
}
