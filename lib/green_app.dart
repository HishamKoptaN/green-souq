import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'core/blocs/theme_bloc.dart';
import 'core/di/dependency_injection.dart';
import 'core/language/bloc/language_bloc.dart';
import 'core/localization/app_localization_setup.dart';
import 'core/routing/app_router.dart';
import 'core/theme/themes/dark_theme.dart';
import 'core/theme/themes/light_theme.dart';
import 'features/auth/auth/present/views/auth_view.dart';

class GreenApp extends StatefulWidget {
  final String? initialLocation;
  const GreenApp({super.key, this.initialLocation});

  @override
  State<GreenApp> createState() => _GreenAppState();
}

class _GreenAppState extends State<GreenApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter.createRouter(
      widget.initialLocation ?? '/${AuthView.routeName}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          bloc: getIt<LanguageBloc>(),
          builder: (context, languageState) {
            return BlocBuilder<ThemeBloc, ThemeState>(
              bloc: getIt<ThemeBloc>(),
              builder: (context, themeState) {
                return MaterialApp.router(
                  title: '',
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme(context: context),
                  darkTheme: darkTheme(context: context),
                  themeMode: ThemeMode.light,
                  locale: languageState.maybeWhen(
                    loaded: (locale) {
                      return locale;
                    },
                    orElse: () {
                      return const Locale('ar');
                    },
                  ),
                  localizationsDelegates:
                      AppLocalizationSetup.localizationDelegates,
                  supportedLocales: AppLocalizationSetup.supportedLocales,
                  localeResolutionCallback:
                      AppLocalizationSetup.localeResolutionCallback,
                  routerConfig: _router,
                  builder: (context, child) {
                    return child!;
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
