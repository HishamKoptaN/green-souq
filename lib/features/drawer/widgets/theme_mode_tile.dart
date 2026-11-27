import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../core/blocs/theme_bloc.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/theme_mode_picker.dart';
import '../service_tile.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: getIt<ThemeBloc>(),
      builder: (context, state) {
        final mode = currentThemeMode(state);
        return ServiceTile(
          icon: LucideIcons.sunMoon,
          title: 'المظهر',
          badgeText: themeModeLabels[mode],
          onTap: () {
            showThemeModePicker(context);
          },
        );
      },
    );
  }
}
