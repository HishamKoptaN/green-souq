import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/extensions/theme_ext.dart';
import 'core/widgets/custom_scaffold.dart';
import 'features/notifications/present/view/notifications_view.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'features/profile/present/views/profile_view.dart';
import 'profile_icon_btn.dart';
import 'features/drawer/drawer_card.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithNavBar({super.key, required this.navigationShell});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      drawer: DrawerCard(),
      appBar: AppBar(
        title: const Text('الرئيسية'),
        actionsPadding: .symmetric(horizontal: 8.w),
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              height: 26.r,
              width: 26.r,
              margin: .all(10.r),
              decoration: BoxDecoration(borderRadius: .circular(12.r)),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: FaIcon(
                  FontAwesomeIcons.sliders,
                  color: context.colorScheme.onPrimary.withValues(alpha: 0.8),
                  size: 20.r,
                ),
              ),
            );
          },
        ),
        actions: [
          NotificationIconButtonNorm(
            hasUnread: true,
            onTap: () {
              context.push(NotificationsView.routeName);
            },
          ),
          ProfileIconButton(
            onTap: () {
              context.go(ProfileView.routeName);
            },
          ),
        ],
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        backgroundColor: context.colorScheme.onPrimary,
        currentIndex: navigationShell.currentIndex,
        onTap: (i) {
          navigationShell.goBranch(
            i,
            initialLocation: i == navigationShell.currentIndex,
          );
        },
        selectedLabelStyle: context.textTheme.labelLarge?.copyWith(
          fontWeight: .bold,
        ),
        unselectedLabelStyle: context.textTheme.labelSmall?.copyWith(
          fontWeight: .bold,
        ),
        elevation: 0,
        selectedItemColor: context.colorScheme.primary,
        unselectedItemColor: context.colorScheme.onSurfaceVariant,
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
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}

class NotificationIconButtonNorm extends StatelessWidget {
  final bool hasUnread;
  final VoidCallback onTap;

  const NotificationIconButtonNorm({
    super.key,
    required this.hasUnread,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        height: 30.r,
        width: 30.r,
        margin: .all(8.r),
        decoration: BoxDecoration(borderRadius: .circular(12.r)),
        child: Stack(
          alignment: .center,
          children: [
            Icon(Icons.notifications_none_rounded, size: 26.r),
            if (hasUnread)
              Positioned(
                top: 2.r,
                left: 0.r,
                child: Container(
                  width: 10.r,
                  height: 10.r,
                  decoration: BoxDecoration(
                    color: context.colorScheme.error,
                    shape: .circle,
                    border: .all(
                      color: context.colorScheme.surfaceContainerHighest,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class NotificationIconButton extends StatelessWidget {
  final bool hasUnread;
  final VoidCallback onTap;

  const NotificationIconButton({
    super.key,
    required this.hasUnread,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        height: 30.r,
        width: 30.r,
        margin: .all(8.r),
        decoration: BoxDecoration(
          color: context.colorScheme.primary.withValues(alpha: 0.1),
          borderRadius: .circular(12.r),
        ),
        child: Stack(
          alignment: .center,
          children: [
            FaIcon(
              FontAwesomeIcons.bell,
              color: context.colorScheme.onSurface,
              size: 22.r,
            ),
            if (hasUnread)
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD32F2F),
                    shape: .circle,
                    border: .all(color: const Color(0xFFE2F1E7), width: 1.5),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
