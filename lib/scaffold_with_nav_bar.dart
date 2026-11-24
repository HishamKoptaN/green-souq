import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/extensions/theme_ext.dart';
import 'core/widgets/custom_scaffold.dart';
import 'features/notifications/present/view/notifications_view.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'features/profile/present/views/profile/profile_view.dart';
import 'profile_icon_btn.dart';
import 'features/drawer/drawer_card.dart';

import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'update_checker.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithNavBar({super.key, required this.navigationShell});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      UpdateChecker.checkForUpdate(context);
    });
  }

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
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        backgroundColor: context.colorScheme.onPrimary,
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (i) {
          widget.navigationShell.goBranch(
            i,
            initialLocation: i == widget.navigationShell.currentIndex,
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
            icon: Icon(LucideIcons.home, size: 22.r),
            activeIcon: Icon(LucideIcons.home, size: 22.r),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.store, size: 22.r),
            activeIcon: Icon(LucideIcons.store, size: 22.r),
            label: 'المحلات و المزارع',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.users, size: 22.r),
            activeIcon: Icon(LucideIcons.users, size: 22.r),
            label: 'مهندسين التوزيع',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user, size: 22.r),
            activeIcon: Icon(LucideIcons.user, size: 22.r),
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
                  height: 10.r,
                  width: 10.r,
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
