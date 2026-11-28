import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/core/blocs/theme_bloc.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/instructions/present/bloc/instructions_bloc.dart';
import 'package:green/features/instructions/present/view/instructions_view.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((_) async => '/tmp/hydrated_instructions');
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getTemporaryDirectory()).path,
      ),
    );
  });

  setUp(() {
    getIt.reset();
    getIt.registerSingleton<ThemeBloc>(ThemeBloc());
    getIt.registerSingleton<InstructionsBloc>(InstructionsBloc());
  });

  testWidgets('renders the first instruction page with separated actions', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, _) => const InstructionsView(),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('التعليمات'), findsOneWidget);
    expect(find.text('التالي'), findsOneWidget);
    expect(find.text('تخطي'), findsOneWidget);
    expect(find.byTooltip('تبديل المظهر'), findsOneWidget);

    final skip = tester.getRect(find.text('تخطي'));
    final next = tester.getRect(find.text('التالي'));
    expect(skip.overlaps(next), isFalse);
  });
}
