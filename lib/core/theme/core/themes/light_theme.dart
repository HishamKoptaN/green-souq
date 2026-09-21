import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/theme_ext.dart';
import '../theme_components/app_bar_theme.dart';
import '../theme_components/input_decoration_theme.dart';

ThemeData lightTheme({required BuildContext context}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0x0001683b),
    brightness: .light,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    brightness: .light,
    // extensions:  [SkeletonizerConfigData()],
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    inputDecorationTheme: inputDecorationTheme(context: context),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: .all(
          context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: .bold,
          ),
        ),
        iconAlignment: .end,
        minimumSize: .all(Size(.infinity, 50.h)),
        maximumSize: .all(Size(.infinity, 50.h)),
        fixedSize: .all(Size(.infinity, 50.h)),
        tapTargetSize: .padded,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: .circular(8.r)),
        ),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.primary.withValues(alpha: .20);
          }
          return colorScheme.onPrimary;
        }),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.primaryFixed.withValues(alpha: .20);
          }
          return colorScheme.primary;
        }),
      ),
    ),
  );
}
