import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/extensions/theme_ext.dart';
import 'core/widgets/custom_scaffold.dart';
import 'core/widgets/soon.dart';
import 'features/notifications/present/view/notifications_view.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'filter_icon_btn.dart';
import 'profile_icon_btn.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithNavBar({super.key, required this.navigationShell});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        actionsPadding: .symmetric(horizontal: 8.w),
        leading: Builder(
          builder: (context) {
            return Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: .circular(12.r),
              ),
              child: FilterIconButton(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
        actions: [
          NotificationIconButtonNorm(
            hasUnread: true,
            onTap: () {
              context.push('/${NotificationsView.routeName}');
            },
          ),
          ProfileIconButton(
            onTap: () {
              openComingSoonModal('', '');
            },
          ),
        ],
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
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
        width: 44.r,
        height: 44.r,
        decoration: BoxDecoration(borderRadius: .circular(12.r)),
        child: Stack(
          alignment: .center,
          children: [
            Icon(
              Icons.notifications_none_rounded,
              color: context.colorScheme.onSurface,
              size: 26.r,
            ),
            if (hasUnread)
              Positioned(
                top: 10.r,
                left: 10.r,
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
        width: 44.r,
        height: 44.r,
        decoration: BoxDecoration(
          color: context.colorScheme.onSurfaceVariant.withValues(alpha: .90),
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
