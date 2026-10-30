import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInstallView extends StatelessWidget {
  const AppInstallView({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: EdgeInsets.all(16.r),
          child: Center(
            child: Text(
              'App Install View',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      );
    }
  }
}
