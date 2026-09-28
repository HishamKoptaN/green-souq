import 'package:flutter/material.dart';

import 'widgets/feed_tab.dart';
import 'widgets/stores_tab.dart';
import 'widgets/orders_tab.dart';
import 'widgets/profile_tab.dart';
import 'widgets/review_modal.dart';

class SalesEngineersHomeView extends StatefulWidget {
  const SalesEngineersHomeView({super.key});

  @override
  State<SalesEngineersHomeView> createState() {
    return _SalesEngineersHomeViewState();
  }
}

class _SalesEngineersHomeViewState extends State<SalesEngineersHomeView> {
  int _currentIndex = 1;

  void _showToast(String message) {
    {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message), behavior: .floating));
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: IndexedStack(
          index: _currentIndex,
          children: [
            FeedTab(showToast: _showToast),
            StoresTab(
              showToast: _showToast,
              openReviewModal: (store) {
                {
                  openReviewModal(context, store, _showToast);
                }
              },
            ),
            OrdersTab(showToast: _showToast),
            ProfileTab(showToast: _showToast),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          destinations: const [],
        ),
      );
    }
  }
}
