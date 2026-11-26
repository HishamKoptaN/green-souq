import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../forms/translated_text.dart';

enum AppSnackBarType { success, error, warning, info }

abstract class AppSnackBar {
  static void show({
    required BuildContext context,
    required String title,
    String? message,
    required AppSnackBarType type,
    Duration? duration,
    bool autoDismiss = true,
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);
    late final Color borderColor;
    late final IconData icon;

    final colors = theme.colorScheme;

    // Set colors and icon based on type
    switch (type) {
      case AppSnackBarType.success:
        borderColor = colors.primary;
        icon = Icons.check_circle_rounded;
        break;
      case AppSnackBarType.error:
        borderColor = colors.error;
        icon = Icons.error_outline_rounded;
        break;
      case AppSnackBarType.warning:
        borderColor = colors.tertiary;
        icon = Icons.warning_amber_rounded;
        break;
      case AppSnackBarType.info:
        borderColor = colors.secondary;
        icon = Icons.info_outline_rounded;
        break;
    }

    final snackBar = SnackBar(
      backgroundColor: colors.surface.withValues(alpha: 0),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: duration ?? const Duration(seconds: 4),
      content: Container(
        width: 343.w,
        height: 82.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: colors.inverseSurface,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withValues(alpha: 0.34),
              blurRadius: 4.r,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 4.h,
                decoration: BoxDecoration(
                  color: borderColor,
                  boxShadow: [
                    BoxShadow(
                      color: borderColor.withValues(alpha: 0.5),
                      blurRadius: 2.r, // filter: blur(2px)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          backgroundBlendMode: BlendMode.screen,
                          gradient: RadialGradient(
                            colors: [
                              borderColor.withValues(alpha: 0.12),
                              borderColor.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: BoxDecoration(
                          color: colors.surfaceContainerHighest,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(icon, color: borderColor, size: 24.r),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      children: [
                        TrText(
                          title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: colors.onInverseSurface,
                          ),
                        ),
                        if (message != null) ...[
                          TrText(
                            message,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colors.onInverseSurface.withValues(
                                alpha: 0.7,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

extension AppSnackBarExtension on BuildContext {
  void showSuccessSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.success,
      duration: duration,
    );
  }

  void showErrorSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.error,
      duration: duration,
    );
  }

  void showWarningSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.warning,
      duration: duration,
    );
  }

  void showInfoSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.info,
      duration: duration,
    );
  }
}
