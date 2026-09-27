import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ShopsMapWidget extends StatelessWidget {
  const ShopsMapWidget({super.key, required this.onShowToast});
  final void Function(String) onShowToast;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        height: 100.h,
        width: .infinity,
        color: context.colorScheme.surface,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.surface,
                      context.colorScheme.surface,
                    ],
                    begin: .topCenter,
                    end: .bottomCenter,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.map_outlined,
                    size: 40.r,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            Center(
              child: Stack(
                alignment: .center,
                children: [
                  Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: context.colorScheme.primary.withValues(alpha: 0.2),
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: context.colorScheme.primary.withValues(alpha: 0.4),
                    ),
                  ),
                  Container(
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: context.colorScheme.primary,
                    ),
                    child: Icon(
                      Icons.directions_car,
                      color: context.theme.iconTheme.color,
                      size: 16.r,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 12.w,
              top: 12.h,
              child: Column(
                children: [
                  FloatingActionButton.small(
                    heroTag: 'layers',
                    backgroundColor: context.colorScheme.surface,
                    onPressed: () {
                      {
                        onShowToast('طبقات الخريطة');
                      }
                    },
                    child: Icon(
                      Icons.layers,
                      color: context.colorScheme.onSurface,
                      size: 18.r,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  FloatingActionButton.small(
                    heroTag: 'my_location',
                    backgroundColor: context.colorScheme.surface,
                    onPressed: () {
                      {
                        onShowToast('إعادة تركيز الموقع');
                      }
                    },
                    child: Icon(
                      Icons.my_location,
                      color: context.colorScheme.primary,
                      size: 18.r,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
