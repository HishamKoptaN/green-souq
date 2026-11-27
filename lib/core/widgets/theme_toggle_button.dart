import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../blocs/theme_bloc.dart';
import '../di/dependency_injection.dart';
import '../theme/extensions/theme_ext.dart';
import 'theme_mode_picker.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: getIt<ThemeBloc>(),
      builder: (context, state) {
        final mode = currentThemeMode(state);
        final icon = mode == ThemeMode.dark
            ? LucideIcons.sun
            : LucideIcons.moon;
        return IconButton(
          onPressed: () {
            getIt<ThemeBloc>().add(const ThemeEvent.toggleTheme());
          },
          onLongPress: () {
            showThemeModePicker(context);
          },
          icon: Icon(icon, size: 20.r),
          color: context.colorScheme.onSurfaceVariant,
          tooltip: 'تبديل المظهر',
        );
      },
    );
  }
}
