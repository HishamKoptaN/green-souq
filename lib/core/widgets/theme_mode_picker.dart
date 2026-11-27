import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../blocs/theme_bloc.dart';
import '../di/dependency_injection.dart';
import '../theme/extensions/theme_ext.dart';
import 'forms/translated_text.dart';

const Map<ThemeMode, String> themeModeLabels = {
  ThemeMode.system: 'حسب الجهاز',
  ThemeMode.light: 'فاتح',
  ThemeMode.dark: 'داكن',
};

ThemeMode currentThemeMode(ThemeState state) {
  return state.maybeWhen(
    loaded: (themeMode) {
      return themeMode;
    },
    orElse: () {
      return ThemeMode.system;
    },
  );
}

IconData themeModeIcon(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.system:
      return LucideIcons.laptop;
    case ThemeMode.light:
      return LucideIcons.sun;
    case ThemeMode.dark:
      return LucideIcons.moon;
  }
}

void showThemeModePicker(BuildContext context) {
  final current = currentThemeMode(getIt<ThemeBloc>().state);
  showModalBottomSheet<void>(
    context: context,
    builder: (sheetContext) {
      return SafeArea(
        child: Column(
          mainAxisSize: .min,
          children: [
            Padding(
              padding: .symmetric(vertical: 12.h),
              child: TrText(
                'اختر المظهر',
                style: sheetContext.textTheme.titleMedium,
              ),
            ),
            for (final entry in themeModeLabels.entries)
              ListTile(
                leading: Icon(
                  themeModeIcon(entry.key),
                  color: sheetContext.colorScheme.primary,
                ),
                title: TrText(entry.value),
                trailing: entry.key == current
                    ? Icon(
                        LucideIcons.check,
                        color: sheetContext.colorScheme.primary,
                      )
                    : null,
                onTap: () {
                  getIt<ThemeBloc>().add(ThemeEvent.setMode(mode: entry.key));
                  Navigator.of(sheetContext).pop();
                },
              ),
          ],
        ),
      );
    },
  );
}
