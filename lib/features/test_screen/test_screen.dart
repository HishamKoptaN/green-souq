import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'views/stores_tab_view.dart';
import 'views/engineers_tab_view.dart';
import 'views/orders_tab_view.dart';
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
                onReview: (v) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      {
                        return ReviewModal(
                          storeName: 'storeName',
                          onToast: _showToast,
                        );
                      }
                    },
                  );
                },
              ),
              EngineersTabView(onToast: _showToast),
              OrdersTabView(onToast: _showToast),
            ],
          ),
        ),
      );
    }
  }
}
