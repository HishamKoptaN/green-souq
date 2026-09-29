import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/stores_tab_view.dart';
import 'views/engineers_tab_view.dart';
import 'views/orders_tab_view.dart';
import 'views/profile_tab_view.dart';
import 'widgets/coming_soon_modal.dart';
import 'widgets/review_modal.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() {
    {
      return _TestScreenState();
    }
  }
}

class _TestScreenState extends State<TestScreen> {
  int _currentIndex = 1;
  bool _isMapView = false;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<String> _tabTitles = [
    'الرئيسية والمنشورات',
    'استكشاف المحلات',
    'مهندسو ومندوبو التوزيع',
    'الطلبيات والعروض الميدانية',
    'الملف الشخصي والإعدادات',
  ];

  @override
  void initState() {
    {
      super.initState();
      _searchController.addListener(() {
        {
          setState(() {
            _searchQuery = _searchController.text.toLowerCase();
          });
        }
      });
    }
  }

  @override
  void dispose() {
    {
      _searchController.dispose();
      super.dispose();
    }
  }

  void _showToast(String message) {
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).colorScheme.inverseSurface,
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: .circular(10.r)),
        ),
      );
    }
  }

  void _openComingSoonModal(String title, String desc) {
    {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          {
            return ComingSoonModal(title: title, desc: desc);
          }
        },
      );
    }
  }

  void _openReviewModal(String storeName) {
    {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          {
            return ReviewModal(storeName: storeName, onToast: _showToast);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          centerTitle: true,
          title: Text(
            _tabTitles[_currentIndex],
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: () {
                _showToast('لا توجد إشعارات جديدة حالياً');
              },
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: _currentIndex,
            children: [
              StoresTabView(
                isMapView: _isMapView,
                searchController: _searchController,
                searchQuery: _searchQuery,
                onToggleMap: () {
                  setState(() {
                    _isMapView = !_isMapView;
                  });
                },
                onToast: _showToast,
                onReview: _openReviewModal,
              ),
              EngineersTabView(onToast: _showToast),
              OrdersTabView(onToast: _showToast),
              ProfileTabView(onToast: _showToast),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex > 3 ? 3 : _currentIndex,
          onTap: (index) {
            {
              if (index == 3) {
                {
                  _openComingSoonModal(
                    'نظام إدارة وتتبع الطلبيات قريباً',
                    'نعمل حالياً على إطلاق نظام رقمي متكامل لربط فواتير الشحنات، تتبع خطوط السير، والتعميد الفوري بين المزارع والمحلات والشركات الزراعية.',
                  );
                }
              } else {
                {
                  setState(() {
                    _currentIndex = index;
                  });
                }
              }
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.onSurfaceVariant,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11.sp,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11.sp,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              activeIcon: Icon(Icons.storefront),
              label: 'المحلات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.engineering_outlined),
              activeIcon: Icon(Icons.engineering),
              label: 'مهندسو التوزيع',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              activeIcon: Icon(Icons.receipt_long),
              label: 'الطلبيات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
        ),
      );
    }
  }
}
