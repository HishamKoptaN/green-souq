import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePostTriggerCard extends StatelessWidget {
  const CreatePostTriggerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Container(
      padding: .all(14.r),
      decoration: BoxDecoration(
        color: cs.onPrimary,
        borderRadius: .circular(16.r),
        border: .all(color: cs.outlineVariant),
      ),
      child: Column(
        spacing: 6.h,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 44.r,
                    width: 44.r,
                    decoration: BoxDecoration(
                      shape: .circle,
                      border: .all(color: cs.primary, width: 2.r),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1595273670150-bd0c3c392e46?w=150',
                        fit: .cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 12.r,
                      width: 12.r,
                      decoration: BoxDecoration(
                        color: cs.primary,
                        shape: .circle,
                        border: .all(color: cs.surface, width: 2.r),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Container(
                  padding: .symmetric(horizontal: 16.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerLowest,
                    borderRadius: .circular(12.r),
                    border: .all(color: cs.outlineVariant),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'ما الجديد في حقلك أو مشروعك الزراعي اليوم؟',
                          style: tt.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                          ),
                          maxLines: 2,
                          overflow: .ellipsis,
                        ),
                      ),
                      Icon(Icons.edit_note, size: 22.r, color: cs.primary),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(color: cs.outlineVariant),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              _btn(context, Icons.photo_library, 'ألبوم صور', cs.primary),
              _btn(context, Icons.videocam, 'فيديو', cs.primary),
              _btn(context, Icons.help_center, 'نصيحة زراعية', cs.tertiary),
            ],
          ),
        ],
      ),
    );
  }

  Widget _btn(BuildContext context, IconData icon, String label, Color color) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: .symmetric(horizontal: 8.w, vertical: 6.h),
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(icon, size: 20.r, color: color),
          SizedBox(width: 6.w),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium
                ?.copyWith(color: cs.onSurface, fontWeight: .w600),
          ),
        ],
      ),
    );
  }
}
