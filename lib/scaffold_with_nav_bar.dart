import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'core/widgets/custom_scaffold.dart';
import 'features/notifications/present/view/notifications_view.dart';
import 'gen/assets.gen.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithNavBar({super.key, required this.navigationShell});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset('assets/icons/menu.svg'),
            );
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              context.push('/${NotificationsView.routeName}');
            },
            child: CircleAvatar(
              radius: 18.r,
              child: Center(child: SvgPicture.asset(Assets.icons.baseCart)),
            ),
          ),
        ],
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationShell.currentIndex,
        selectedLabelStyle: TextStyle(),
        unselectedLabelStyle: TextStyle(),
        onTap: (i) {
          navigationShell.goBranch(
            i,
            initialLocation: i == navigationShell.currentIndex,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 22.r),
            activeIcon: Icon(Icons.home, size: 22.r),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined, size: 22.r),
            activeIcon: Icon(Icons.storefront, size: 22.r),
            label: 'المحلات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.engineering_outlined, size: 22.r),
            activeIcon: Icon(Icons.engineering, size: 22.r),
            label: 'مهندسين التوزيع',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 22.r),
            activeIcon: Icon(Icons.person, size: 22.r),
            label: 'الطلبيات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 22.r),
            activeIcon: Icon(Icons.person, size: 22.r),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
