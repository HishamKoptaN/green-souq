import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/users/domain/entities/user_entity.dart';

class UserHeroCard extends StatelessWidget {
  const UserHeroCard({
    super.key,
    required this.user,
    required this.onCallPressed,
    required this.onChatPressed,
    required this.onDirectionsPressed,
  });

  final UserEntity user;
  final VoidCallback onCallPressed;
  final VoidCallback onChatPressed;
  final VoidCallback onDirectionsPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: .circular(12.r),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 4.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        spacing: 16.h,
        children: [
          Row(
            crossAxisAlignment: .start,
            spacing: 4.w,
            children: [
              Stack(
                children: [
                  Container(
                    height: 64.h,
                    width: 64.w,
                    decoration: BoxDecoration(
                      borderRadius: .circular(12.r),
                      color: context.colorScheme.surfaceContainerLow,
                    ),
                    child: Icon(
                      Icons.person,
                      color: context.colorScheme.primary,
                      size: 32.r,
                    ),
                  ),
                  Positioned(
                    bottom: 4.r,
                    right: 4.r,
                    child: Container(
                      width: 14.r,
                      height: 14.r,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        shape: .circle,
                        border: .all(
                          color: context.colorScheme.surfaceContainerLowest,
                          width: 2.r,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                            user.name,
                            style: context.textTheme.titleSmall?.copyWith(
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
                    Row(
                      spacing: 4.w,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16.r,
                          color: context.colorScheme.tertiary,
                        ),
                        Expanded(
                          child: Text(
                            user.address.isNotEmpty
                                ? user.address
                                : 'عنوان غير متوفر',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: .ellipsis,
                          ),
                        ),
                      ],
                    ),
                    if (user.distance.isNotEmpty)
                      Row(
                        spacing: 4.w,
                        children: [
                          Icon(
                            Icons.near_me,
                            size: 15.r,
                            color: context.colorScheme.primary,
                          ),
                          Text(
                            'يبعد ${user.distance} كم عن موقعك الحالي',
                            style: context.textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            spacing: 8.w,
            children: [
              Expanded(
                child: _buildActionButton(
                  context,
                  icon: FaIcon(FontAwesomeIcons.phone, size: 15.r),
                  label: 'اتصال هاتفي',
                  onTap: onCallPressed,
                ),
              ),
              Expanded(
                child: _buildActionButton(
                  context,
                  icon: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 18.r,
                    color: Colors.green,
                  ),
                  label: 'محادثة واتساب',
                  onTap: onChatPressed,
                ),
              ),
              Expanded(
                child: _buildActionButton(
                  context,
                  icon: FaIcon(FontAwesomeIcons.locationArrow, size: 15.r),
                  label: 'خرائط الملاحة',
                  onTap: onDirectionsPressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required FaIcon icon,
    required String label,
    required VoidCallback onTap,
  }) {
    {
      return InkWell(
        onTap: onTap,
        borderRadius: .circular(12.r),
        child: Container(
          padding: .symmetric(vertical: 10.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerLow,
            borderRadius: .circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: .center,
            spacing: 4.h,
            children: [
              icon,
              Text(
                label,
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: .ellipsis,
              ),
            ],
          ),
        ),
      );
    }
  }
}
