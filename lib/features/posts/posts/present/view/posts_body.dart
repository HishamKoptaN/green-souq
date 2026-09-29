import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/green_create_post_bottom_sheet.dart';
import 'package:green/test.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/posts_bloc.dart';

class PostsBody extends StatelessWidget {
  const new({super.key});
  static const String routeName = 'posts';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: getIt<PostsBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const GreenCreatePostBottomSheet();
                      },
                    );
                  },
                  child: CreatePostTriggerCard(),
                ),
                const SizedBox(height: 16),
                _buildPostCard(
                  authorInitials: 'م.ع',
                  authorName: 'م. عاصم الشمري',
                  subtitle: 'استشاري وقاية نباتية • منذ 30 دقيقة',
                  badgeText: 'نصيحة موسمية',
                  content: 'بدء ظهور أعراض البياض الدقيقي في حقول الطماطم المحمية نظراً للتقلبات الجوية. يُنصح بالرش الوقائي بمركبات الكبريت الميكروني أو المبيدات الجهازية المعتمدة فوراً مع تقليل الرطوبة النسبية.',
                  likes: '24 إعجاب',
                  comments: '8 تعليقات',
                ),
                const SizedBox(height: 16),
                _buildPostCard(
                  authorInitials: 'م.ش',
                  authorName: 'شركة الخرج للأسمدة المركبة',
                  subtitle: 'عرض تجاري وتوريد • منذ ساعتين',
                  badgeText: 'عرض خاص',
                  badgeColor: const Color(0xFF7ff7aa),
                  badgeTextColor: const Color(0xFF00723f),
                  content: 'توفر دفعة جديدة من مركب NPK عالي البوتاسيوم 12-12-36 بأسعار الجملة لجميع المحلات المسجلة في برنشت والعزيزية، مع إمكانية التوصيل في نفس اليوم.',
                  likes: '42 إعجاب',
                  comments: '15 تعليق',
                ),
              ],
            );
          },
          orElse: () {
            return CustomCircularProgress();
          },
        );
      },
    );
  }

  Widget _buildPostCard({
    required String authorInitials,
    required String authorName,
    required String subtitle,
    required String badgeText,
    Color badgeColor = const Color(0xFFeaf7ed),
    Color badgeTextColor = const Color(0xFF006838),
    required String content,
    required String likes,
    required String comments,
  }) {
    return Container(
      padding: const .all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(12),
        border: Border.all(color: const Color(0xFFdeebe1)),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 4),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF006838).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      authorInitials,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF006838),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xFF131e18),
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF3f4940),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  badgeText,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: badgeTextColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF131e18),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(color: Color(0xFFdeebe1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {
                  // _showToast('تم الإعجاب بالمنشور');
                },
                icon: const Icon(Icons.thumb_up_outlined, size: 18),
                label: Text(likes, style: const TextStyle(fontSize: 12)),
              ),
              TextButton.icon(
                onPressed: () {
                  // _showToast('تم فتح التعليقات');
                },
                icon: const Icon(Icons.chat_bubble_outline, size: 18),
                label: Text(comments, style: const TextStyle(fontSize: 12)),
              ),
              TextButton.icon(
                onPressed: () {
                  // _showToast('تمت مشاركة المنشور');
                },
                icon: const Icon(Icons.share_outlined, size: 18),
                label: const Text('مشاركة', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
