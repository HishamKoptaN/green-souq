import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/extensions/theme_ext.dart';
import 'widgets/drawer_footer.dart';
import 'widgets/drawer_menu_list.dart';
import 'widgets/drawer_pull_bar.dart';
import 'widgets/drawer_user_header.dart';

class DrawerCard extends StatelessWidget {
  const DrawerCard({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return SafeArea(
        child: Container(
          width: 300.w,
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerLowest,
            borderRadius: .horizontal(left: Radius.circular(24.r)),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.shadow.withValues(alpha: 0.08),
                blurRadius: 20.r,
                offset: Offset(-4.r, 0),
              ),
            ],
          ),
          child: Column(
            children: [
              const DrawerPullBar(),
              const DrawerUserHeader(),
              Expanded(
                child: SingleChildScrollView(
                  padding: .symmetric(horizontal: 16.w, vertical: 12.h),
                  child: const DrawerMenuList(),
                ),
              ),
              const DrawerFooter(),
            ],
          ),
        ),
      );
    }
  }
}
