import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'value_card_widget.dart';

class AppInstallValueGrid extends StatelessWidget {
  const AppInstallValueGrid({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: 1.3,
        children: const [
          ValueCardWidget(
            icon: Icons.storefront,
            title: 'ربط المحلات بالمزارع',
            description:
                'عقود توريد وتوفير مستلزمات الإنتاج بأسعار الجملة المباشرة.',
          ),
          ValueCardWidget(
            icon: Icons.engineering,
            title: 'شبكة المهندسين',
            description:
                'استشارات ميدانية وتواصل فوري مع مناديب الشركات الزراعية.',
          ),
          ValueCardWidget(
            icon: Icons.local_shipping,
            title: 'التوريد اللوجستي السريع',
            description:
                'تتبع الشحنات وحجز النقل المبرد والمقطورات الزراعية فورياً.',
          ),
          ValueCardWidget(
            icon: Icons.trending_up,
            title: 'مؤشر الأسعار الحي',
            description:
                'تحديثات يومية لأسعار الأسمدة، البذور والمحاصيل في السوق المحلي.',
          ),
        ],
      );
    }
  }
}
