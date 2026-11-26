import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'post_card_widget.dart';

class FeedTab extends StatelessWidget {
  final void Function(String) showToast;

  const FeedTab({super.key, required this.showToast});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [colors.primary, colors.primaryContainer],
              ),
              borderRadius: .circular(16.r),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'مجتمع الزراعة والإنتاج',
                      style: textTheme.labelMedium?.copyWith(
                        color: colors.onPrimary.withValues(alpha: 0.8),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'أحدث المنشورات والأسواق',
                      style: textTheme.titleLarge?.copyWith(
                        color: colors.onPrimary,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.newspaper,
                  color: colors.onPrimary.withValues(alpha: 0.8),
                  size: 36.r,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          PostCardWidget(
            author: 'م. عاصم الشمري',
            role: 'استشاري وقاية نباتية • منذ 30 دقيقة',
            avatarText: 'م.ع',
            tag: 'نصيحة موسمية',
            content: 'بدء ظهور أعراض البياض الدقيقي في حقول الطماطم المحمية.',
            likes: '24 إعجاب',
            comments: '8 تعليقات',
            showToast: showToast,
          ),
        ],
      );
    }
  }
}
