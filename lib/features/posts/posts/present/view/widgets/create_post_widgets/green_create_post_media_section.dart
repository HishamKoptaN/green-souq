import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenCreatePostMediaSection extends StatelessWidget {
  final VoidCallback onAddMore;
  final VoidCallback onRemovePhoto;
  final VoidCallback onRemoveVideo;

  const GreenCreatePostMediaSection({
    super.key,
    required this.onAddMore,
    required this.onRemovePhoto,
    required this.onRemoveVideo,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.perm_media, size: 16.r, color: colorScheme.primary),
                SizedBox(width: 4.w),
                Text(
                  'الوسائط المرفقة (٢)',
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Text(
              'الحد الأقصى ٤ عناصر',
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          children: [
            // 1. Photo Tile
            Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: .circular(12.r),
                  child: Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBq2sUPvD31HYKB28WEGTraHKdcSHdgAdCT18owenj3Vetv2SNJw9DZCvoCEDlOxxvybOaoExs_BunginbGBVpRfEg43l--k9LzUN9vbMsyhIcIDrQnpqzuYKPPhgQqHfYW6ysXlDdC_nXTrOxRB2rEpC0FBLaovGek39HRt9zyoCOD32eKR9GXIz8D7FYjAok7Bp-36L3Vx7rqRWaSjdU9tOcSQlq1g8lnWwFYopoQwRqAEZuhhx4r5Q',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 6.r,
                  left: 6.r,
                  child: GestureDetector(
                    onTap: onRemovePhoto,
                    child: Container(
                      width: 24.r,
                      height: 24.r,
                      decoration: BoxDecoration(
                        color: colorScheme.inverseSurface.withOpacity(0.75),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.close, size: 14.r, color: colorScheme.onPrimary),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 6.r,
                  right: 6.r,
                  child: Container(
                    padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: colorScheme.inverseSurface.withOpacity(0.6),
                      borderRadius: .circular(4.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.image, size: 12.r, color: colorScheme.onPrimary),
                        SizedBox(width: 2.w),
                        Text(
                          'صورة',
                          style: textTheme.labelSmall?.copyWith(color: colorScheme.onPrimary, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // 2. Video Tile
            Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: .circular(12.r),
                  child: Container(
                    color: colorScheme.surfaceContainerHigh,
                    child: Center(
                      child: Container(
                        width: 32.r,
                        height: 32.r,
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerLowest.withOpacity(0.9),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.play_arrow, color: colorScheme.primary, size: 20.r),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6.r,
                  left: 6.r,
                  child: GestureDetector(
                    onTap: onRemoveVideo,
                    child: Container(
                      width: 24.r,
                      height: 24.r,
                      decoration: BoxDecoration(
                        color: colorScheme.inverseSurface.withOpacity(0.75),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.close, size: 14.r, color: colorScheme.onPrimary),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 6.r,
                  right: 6.r,
                  child: Container(
                    padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: colorScheme.inverseSurface.withOpacity(0.7),
                      borderRadius: .circular(4.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.videocam, size: 12.r, color: colorScheme.secondaryContainer),
                        SizedBox(width: 2.w),
                        Text(
                          '0:45 د',
                          style: textTheme.labelSmall?.copyWith(color: colorScheme.onPrimary, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // 3. Add More Slot
            InkWell(
              onTap: onAddMore,
              borderRadius: .circular(12.r),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerLow,
                  borderRadius: .circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Container(
                      width: 36.r,
                      height: 36.r,
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add_photo_alternate, color: colorScheme.primary, size: 22.r),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'إضافة المزيد',
                      style: textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
