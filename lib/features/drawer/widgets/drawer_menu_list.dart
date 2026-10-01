import 'package:flutter/material.dart';

import '../../../core/widgets/coming_soon_modal.dart';
import '../service_tile.dart';

class DrawerMenuList extends StatelessWidget {
  const DrawerMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        children: [
          ServiceTile(
            icon: Icons.eco,
            title: 'المنتجات',
            badgeText: 'قريبا',
            onTap: () {
              openComingSoonModal(
                title: 'المنتجات',
                desc: 'نعمل حالياً على إطلاق نظام رقمي متكامل لإدارة وعرض المنتجات.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.receipt_long,
            title: 'الطلبيات',
            badgeText: 'قريباً',
            onTap: () {
              openComingSoonModal(
                title: 'الطلبيات',
                desc: 'نعمل حالياً على إطلاق نظام رقمي متكامل لربط طلبيات الشحنات.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.work_outline,
            title: 'الوظائف والعمالة',
            badgeText: 'قريباً',
            onTap: () {
              openComingSoonModal(
                title: 'الوظائف والعمالة',
                desc: 'منصة متكاملة لربط أصحاب المزارع بالعمالة الزراعية.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.gavel,
            title: 'المزادات',
            badgeText: 'قريباً',
            onTap: () {
              openComingSoonModal(
                title: 'المزادات',
                desc: 'منصة المزادات الرقمية المباشرة للمحاصيل الزراعية.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.analytics,
            title: 'مؤشر وبورصة الأسعار',
            badgeText: 'قريبا',
            onTap: () {
              openComingSoonModal(
                title: 'مؤشر الأسعار',
                desc: 'تتبع أسعار المحاصيل والسلع الزراعية لحظياً.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.notifications_active,
            title: 'الإشعارات والتنبيهات',
            hasRedDot: true,
            onTap: () {
              openComingSoonModal(
                title: 'الإشعارات',
                desc: 'تنبيهات فورية بخصوص شحناتك وعقودك.',
              );
            },
          ),
          ServiceTile(
            icon: Icons.settings,
            title: 'إعدادات الحساب والأمان',
            onTap: () {},
          ),
        ],
      );
    }
  }
}
