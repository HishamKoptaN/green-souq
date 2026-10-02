import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_install_hero_header.dart';
import '../widgets/app_install_value_grid.dart';
import '../widgets/app_install_channels_list.dart';
import '../widgets/app_install_qr_section.dart';
import '../widgets/app_install_specs_section.dart';

class AppInstallView extends StatelessWidget {
  const AppInstallView({super.key});

  static const String routeName = 'install';

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'تثبيت تطبيق السوق الأخضر',
            style: Theme.of(context).textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: .all(16.r),
          child: Column(
            spacing: 16.h,
            children: const [
              AppInstallHeroHeader(),
              AppInstallValueGrid(),
              AppInstallChannelsList(),
              AppInstallQrSection(),
              AppInstallSpecsSection(),
            ],
          ),
        ),
      );
    }
  }
}
