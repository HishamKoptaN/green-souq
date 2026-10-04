import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/theme_ext.dart';
import '../theme_components/input_decoration_theme.dart';

ThemeData lightTheme({required BuildContext context}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF22C55E),
    brightness: .light,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    brightness: .light,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        .android: ZoomPageTransitionsBuilder(),
        .iOS: CupertinoPageTransitionsBuilder(),
        // CupertinoPageTransitionsBuilder(),
        // OpenUpForPageTransitionsBuilder()
        // FadeUpForPageTransitionsBuilder(),
        // PredictiveBackPageTransitionsBuilder()
        // PredictiveBackPageTransitionsBuilder(),
        // FadeThroughPageTransitionsBuilder()
        // SharedAxisPageTransitionsBuilder()
      },
    ),
    // extensions:  [SkeletonizerConfigData()],
    cardTheme: CardThemeData(
      color: context.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: .circular(12.r),
        side: BorderSide(
          color: context.colorScheme.primary.withValues(alpha: 0.3),
        ),
      ),
      shadowColor: context.colorScheme.shadow.withValues(alpha: 0.02),
    ),
    // iconTheme: IconThemeData(size: 12.r),
    //appBarTheme: appBarTheme(colorScheme: colorScheme),
    inputDecorationTheme: inputDecorationTheme(context: context),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: .symmetric(vertical: 2.h, horizontal: 6.w),
        shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
        side: BorderSide(
          color: context.colorScheme.primary.withValues(alpha: 0.3),
        ),
        iconAlignment: .end,
      ),
    ),
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
            return colorScheme.primary.withValues(alpha: .90);
          }
          return colorScheme.onPrimary;
        }),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.primaryFixed.withValues(alpha: .35);
          }
          return colorScheme.primary;
        }),
      ),
    ),
  );
}
