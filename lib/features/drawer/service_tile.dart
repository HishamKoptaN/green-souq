import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/extensions/theme_ext.dart';

class ServiceTile extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final String title;
  final String? badgeText;
  final Color? badgeColor;
  final Color? badgeTextColor;
  final bool hasRedDot;
  final bool isSoon;

  const ServiceTile({
    super.key,
    required this.icon,
    required this.title,
    this.badgeText,
    this.badgeColor,
    this.badgeTextColor,
    this.hasRedDot = false,
    this.isSoon = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    {
      return InkWell(
        onTap: onTap,
        borderRadius: .circular(12.r),
        child: Padding(
          padding: .symmetric(vertical: 8.h, horizontal: 8.w),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: .all(8.r),
                    decoration: BoxDecoration(
                      color: context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.08,
                      ),
                      borderRadius: .circular(10.r),
                    ),
                    child: Icon(
                      icon,
                      size: 20.r,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    title,
                    style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: .w700,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  if (badgeText != null)
                    Container(
                      padding: .symmetric(vertical: 2.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                        color:
                            badgeColor ??
                            context.colorScheme.primaryContainer.withValues(
                              alpha: 0.25,
                            ),
                        borderRadius: .circular(8.r),
                      ),
                      child: Text(
                        badgeText!,
                        style: context.textTheme.bodySmall?.copyWith(
                          color:
                              badgeTextColor ??
                              context.colorScheme.onPrimaryContainer,
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                  if (hasRedDot)
                    Container(
                      width: 8.r,
                      height: 8.r,
                      decoration: BoxDecoration(
                        color: context.colorScheme.error,
                        shape: .circle,
                      ),
                    ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.chevron_right,
                    size: 18.r,
                    color: context.colorScheme.outline,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
