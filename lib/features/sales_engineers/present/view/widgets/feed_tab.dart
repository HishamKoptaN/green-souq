import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'post_card_widget.dart';

class FeedTab extends StatelessWidget {
  final void Function(String) showToast;

  const FeedTab({super.key, required this.showToast});

  @override
  Widget build(BuildContext context) {
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF16834B),
                  Theme.of(context).colorScheme.primary,
                ],
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
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xFF94F7B3),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'أحدث المنشورات والأسواق',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.newspaper,
                  color: const Color(0xFF94F7B3),
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
