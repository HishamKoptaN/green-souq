import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../core/blocs/theme_bloc.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/theme/extensions/theme_ext.dart';
import '../../../core/widgets/forms/translated_text.dart';
import '../service_tile.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({super.key});

  static const Map<ThemeMode, String> _labels = {
    ThemeMode.system: 'حسب الجهاز',
    ThemeMode.light: 'فاتح',
    ThemeMode.dark: 'داكن',
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: getIt<ThemeBloc>(),
      builder: (context, state) {
        final mode = state.maybeWhen(
          loaded: (themeMode) {
            return themeMode;
          },
          orElse: () {
            return ThemeMode.system;
          },
        );
        return ServiceTile(
          icon: LucideIcons.sunMoon,
          title: 'المظهر',
          badgeText: _labels[mode],
          onTap: () {
            _showPicker(context, mode);
          },
        );
      },
    );
  }

  void _showPicker(BuildContext context, ThemeMode current) {
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
              for (final entry in _labels.entries)
                ListTile(
                  leading: Icon(
                    _iconFor(entry.key),
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
                    getIt<ThemeBloc>().add(
                      ThemeEvent.setMode(mode: entry.key),
                    );
                    Navigator.of(sheetContext).pop();
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  IconData _iconFor(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return LucideIcons.laptop;
      case ThemeMode.light:
        return LucideIcons.sun;
      case ThemeMode.dark:
        return LucideIcons.moon;
    }
  }
}
