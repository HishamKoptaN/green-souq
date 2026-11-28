import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/core/blocs/theme_bloc.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/auth/auth_choice/present/views/select_account_type_view.dart';
import 'package:green/features/auth/auth/present/bloc/auth_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path_provider/path_provider.dart';

class _MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((_) async => '/tmp/hydrated_select');
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getTemporaryDirectory()).path,
      ),
    );
  });

  setUp(() {
    getIt.reset();
    getIt.registerSingleton<ThemeBloc>(ThemeBloc());
    final authBloc = _MockAuthBloc();
    when(() => authBloc.state).thenReturn(const AuthState.unauthenticated());
    getIt.registerSingleton<AuthBloc>(authBloc);
  });

  testWidgets('renders account type choices and a fixed theme toggle', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, _) => SelectAccountTypeView(),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('أهلا بيك في السوق الاخضر'), findsOneWidget);
    expect(find.text('محل أدوية زراعية'), findsOneWidget);
    expect(find.text('مزارع / صاحب مزرعة'), findsOneWidget);
    expect(find.byTooltip('تبديل المظهر'), findsOneWidget);
  });
}
