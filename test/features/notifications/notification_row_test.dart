import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/notifications/domain/entities/notification_entity.dart';
import 'package:green/features/notifications/present/view/widgets/notification_row.dart';

void main() {
  testWidgets('renders notification title and body', (tester) async {
    const item = NotificationEntity(
      id: '1',
      title: 'عنوان التنبيه',
      body: 'نص التنبيه',
      createdAt: 'اليوم',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, _) => const NotificationRow(item: item),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('عنوان التنبيه'), findsOneWidget);
    expect(find.text('نص التنبيه'), findsOneWidget);
  });
}
