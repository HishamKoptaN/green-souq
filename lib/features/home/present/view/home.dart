import 'package:flutter/material.dart';

import 'widget/shops_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShopsBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.95),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 12,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          // currentIndex: _selectedNavIndex,
          // onTap: (index) => setState(() => _selectedNavIndex = index),
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF006838),
          unselectedItemColor: const Color(0xFF3F4940),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'المحلات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.checklist_rtl),
              label: 'زياراتي',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'المحادثات'),
            BottomNavigationBarItem(icon: Icon(Icons.badge), label: 'حسابي'),
          ],
        ),
      ),
    );
  }
}
