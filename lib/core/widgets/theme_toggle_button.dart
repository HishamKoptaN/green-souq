import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../blocs/theme_bloc.dart';
import '../di/dependency_injection.dart';
import '../theme/extensions/theme_ext.dart';
import 'theme_mode_picker.dart';

class ThemeToggleButton extends StatelessWidget {
  final bool floating;

  const ThemeToggleButton({super.key, this.floating = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: getIt<ThemeBloc>(),
      builder: (context, state) {
        final mode = currentThemeMode(state);
        final icon = mode == ThemeMode.dark
            ? LucideIcons.sun
            : LucideIcons.moon;
        final button = IconButton(
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
        if (!floating) {
          return button;
        }
        return Container(
          height: 38.r,
          width: 38.r,
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerHigh,
            shape: .circle,
          ),
          child: button,
        );
      },
    );
  }
}
