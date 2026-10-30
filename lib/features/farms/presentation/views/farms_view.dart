import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/farm_entity.dart';

class FarmsView extends StatelessWidget {
  const FarmsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Farms',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: .all(16.r),
        child: ListView(
          children: const [],
        ),
      ),
    );
  }
}
