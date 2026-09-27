import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ShopsHeaderToggle extends StatefulWidget {
  const ShopsHeaderToggle({super.key, required this.onToggle});
  final ValueChanged<bool> onToggle;

  @override
  State<ShopsHeaderToggle> createState() {
    return _ShopsHeaderToggleState();
  }
}

class _ShopsHeaderToggleState extends State<ShopsHeaderToggle> {
  bool _isMapVisible = false;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(2.r),
        decoration: BoxDecoration(
          color: context.colorScheme.onSurfaceVariant.withValues(alpha: 0.1),
          borderRadius: .circular(16.r),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                {
                  setState(() {
                    _isMapVisible = true;
                  });
                  widget.onToggle(true);
                }
              },
              child: Container(
                padding: .symmetric(vertical: 4.h, horizontal: 2.w),
                decoration: BoxDecoration(
                  color: _isMapVisible
                      ? context.colorScheme.surface
                      : context.colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.1,
                        ),
                  borderRadius: .circular(12.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.map,
                      size: 16.r,
                      color: _isMapVisible
                          ? context.colorScheme.primary
                          : context.colorScheme.onSurfaceVariant,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'الخريطة',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: .bold,
                        color: _isMapVisible
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                {
                  setState(() {
                    _isMapVisible = false;
                  });
                  widget.onToggle(false);
                }
              },
              child: Container(
                padding: .symmetric(vertical: 6.h, horizontal: 4.w),
                decoration: BoxDecoration(
                  color: !_isMapVisible
                      ? context.colorScheme.surface
                      : context.colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.1,
                        ),
                  borderRadius: .circular(12.r),
                  boxShadow: !_isMapVisible
                      ? [
                          BoxShadow(
                            color: context.colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.05),
                            blurRadius: 4.r,
                          ),
                        ]
                      : [],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.format_list_bulleted,
                      size: 16.r,
                      color: !_isMapVisible
                          ? context.colorScheme.primary
                          : context.colorScheme.onSurfaceVariant,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'القائمة',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: .bold,
                        color: !_isMapVisible
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
