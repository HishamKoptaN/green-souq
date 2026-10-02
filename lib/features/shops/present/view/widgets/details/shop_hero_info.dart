import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';

class ShopHeroInfo extends StatelessWidget {
  const ShopHeroInfo({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        crossAxisAlignment: .start,
        spacing: 14.w,
        children: [
          _buildStoreImage(context),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              spacing: 4.h,
              children: [
                Row(
                  spacing: 6.w,
                  children: [
                    Expanded(
                      child: Text(
                        shop.name,
                        style: context.textTheme.titleMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: .bold,
                        ),
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      color: context.colorScheme.primary,
                      size: 20.r,
                    ),
                  ],
                ),
                Text(
                  shop.bio,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLow,
                    borderRadius: .circular(8.r),
                    border: .all(
                      color: context.colorScheme.outlineVariant.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: .min,
                    spacing: 4.w,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14.r,
                        color: context.colorScheme.primary,
                      ),
                      Text(
                        shop.address.isNotEmpty ? shop.address : '',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: .w500,
                        ),
                      ),
                      Container(
                        padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: context.colorScheme.primaryContainer
                              .withValues(alpha: 0.15),
                          borderRadius: .circular(4.r),
                        ),
                        child: Text(
                          shop.distance.isNotEmpty
                              ? '${shop.distance} كم منك'
                              : '',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: context.colorScheme.primary,
                            fontWeight: .bold,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }

  Widget _buildStoreImage(BuildContext context) {
    {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 72.r,
            width: 72.r,
            decoration: BoxDecoration(
              borderRadius: .circular(16.r),
              color: context.colorScheme.surfaceContainerLow,
              border: .all(
                color: context.colorScheme.surfaceContainerLowest,
                width: 2.r,
              ),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.shadow.withValues(alpha: 0.08),
                  blurRadius: 6.r,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: .circular(14.r),
              child: Image.network(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBfgH9cY2_NfV4zjUevxezLvE6P_Z9qChSMMH5GPFWF_B361Dmd1OWHffYWKEXj4_vJh3mixYWQoleJmv3yxEknzh3zsQOEUXVNefDmcbIfFwfi23NN58schb6rynvCioc_mIm1mJ1e3aDjF7HvKvCtXIwlgNZvIZnu7xJXsOagWljKq9suCxTL5UyqGw38EvshCZktHbRFfe2i5CSRBnHs0SBEneH2617yvWN5z5_wgXQ7CmhJ4THi-liFI6YWecHjDf0',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.storefront,
                    color: context.colorScheme.primary,
                    size: 32.r,
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: -2.r,
            left: -2.r,
            child: Container(
              width: 16.r,
              height: 16.r,
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                shape: .circle,
                border: .all(
                  color: context.colorScheme.surfaceContainerLowest,
                  width: 2.5.r,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
