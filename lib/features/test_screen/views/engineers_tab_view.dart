import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/engineer_card.dart';

class EngineersTabView extends StatelessWidget {
  final Function(String) onToast;

  const EngineersTabView({super.key, required this.onToast});

  @override
  Widget build(BuildContext context) {
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: .circular(16.r),
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'شبكة الميدان الزراعية',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'مهندسو ومندوبو التوزيع',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'تواصل مباشر لطلب عينات، استشارات، ومتابعة التوريد',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary
                        .withValues(alpha: 0.1),
                    borderRadius: .circular(12.r),
                  ),
                  child: Icon(
                    Icons.engineering,
                    color: Theme.of(context).colorScheme.primary,
                    size: 28.r,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          EngineerCard(
            initials: 'م.ح',
            name: 'م. حسام الدين عبد الرحمن',
            role: 'مندوب شركة النماء الزراعية • بذور ومبيدات',
            distance: 'يبعد 800 متر عنك (في برنشت)',
            statusText: 'متاح حالياً',
            phone: '0511111111',
            isVerified: true,
            onToast: onToast,
          ),
          SizedBox(height: 16.h),
          EngineerCard(
            initials: 'م.ف',
            name: 'م. فهد بن خالد السبيعي',
            role: 'خبير أنظمة الري الحديث وشبكات التسميد',
            distance: 'يبعد 2.1 كم (طريق الخرج)',
            statusText: 'استشارة ميدانية',
            phone: '0522222222',
            isVerified: true,
            onToast: onToast,
          ),
        ],
      );
    }
  }
}
