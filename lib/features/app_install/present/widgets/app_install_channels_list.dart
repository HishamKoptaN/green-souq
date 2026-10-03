import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'channels/channel_card_widget.dart';

class AppInstallChannelsList extends StatelessWidget {
  const AppInstallChannelsList({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.install_mobile,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    'قنوات التثبيت والتحميل',
                    style: Theme.of(context).textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                'اختر قناتك المفضلة',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ChannelCardWidget(
            icon: Icons.android,
            title: 'تحميل ملف APK المباشر',
            badge: 'موصى به للأندرويد',
            subtitle: 'الحزمة الكاملة V1.0.4 • فحص أمان Clean Check',
            buttonLabel: 'تنزيل فوري للملف (18.2 MB)',
            isPrimary: true,
            onPressed: () {},
          ),
          SizedBox(height: 12.h),
          ChannelCardWidget(
            icon: Icons.shopping_cart,
            title: 'متجر أمازون للتطبيقات',
            badge: 'متاح الآن',
            subtitle: 'Amazon Appstore • متوافق مع أجهزة تابلت ومحطات العمل',
            buttonLabel: 'فتح في أمازون',
            onPressed: () {},
          ),
          SizedBox(height: 12.h),
          ChannelCardWidget(
            icon: Icons.language,
            title: 'تطبيق الويب الفوري (PWA)',
            badge: 'بدون تثبيت',
            subtitle: 'يعمل مباشرة في المتصفح بكامل الوظائف وبسرعة فائقة',
            buttonLabel: 'دخول فوري للمنصة',
            onPressed: () {},
          ),
          SizedBox(height: 12.h),
          ChannelCardWidget(
            icon: Icons.play_arrow,
            title: 'متجر Google Play',
            badge: 'قريباً - قيد النشر',
            subtitle: 'في مرحلة الفحص النهائي مع متجر جوجل بلس',
            buttonLabel: 'تنبيهي عند الطرح',
            onPressed: () {},
          ),
          SizedBox(height: 12.h),
          ChannelCardWidget(
            icon: Icons.apple,
            title: 'متجر Apple App Store',
            badge: 'قريباً - في المراجعة',
            subtitle: 'مخصص لأجهزة iPhone و iPad ومندوبي الميدان',
            buttonLabel: 'طلب إشعار التوفر',
            onPressed: () {},
          ),
        ],
      );
    }
  }
}
