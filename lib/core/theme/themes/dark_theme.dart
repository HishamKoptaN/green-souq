import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dimensions.dart';
import '../extensions/theme_ext.dart';
import '../theme_components/app_bar_theme.dart';
import '../theme_components/input_decoration_theme.dart';

ThemeData darkTheme({required BuildContext context}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.green,
    brightness: .dark,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    brightness: .dark,
    primaryColor: colorScheme.primary,
    // extensions: const [SkeletonizerConfigData()],
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    inputDecorationTheme: inputDecorationTheme(context: context),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith((states) {
          return context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onPrimary,
          );
        }),
        iconAlignment: .end,
        minimumSize: .all(Size(.infinity, 50.h)),
        maximumSize: .all(Size(.infinity, 50.h)),
        fixedSize: .all(Size(.infinity, 50.h)),
        tapTargetSize: .padded,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: .circular(AppDimensions.defaultRadius.r),
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.primaryFixed.withValues(alpha: .20);
          }
          return colorScheme.primaryFixed;
        }),
      ),
    ),
  );
}
