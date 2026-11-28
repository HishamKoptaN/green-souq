import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/core/blocs/theme_bloc.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/onboarding/domain/entities/onboarding_slide_entity.dart';
import 'package:green/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:green/features/onboarding/present/bloc/onboarding_bloc.dart';
import 'package:green/features/onboarding/present/views/onboarding_view.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path_provider/path_provider.dart';

class _MockOnboardingRepository extends Mock implements OnboardingRepository {}

void main() {
  late _MockOnboardingRepository repository;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((_) async => '/tmp/hydrated_onboarding');
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getTemporaryDirectory()).path,
      ),
    );
  });

  setUp(() {
    getIt.reset();
    repository = _MockOnboardingRepository();
    when(() => repository.isCompleted()).thenAnswer((_) async => false);
    when(() => repository.getSlides()).thenReturn(const [
      OnboardingSlideEntity(
        imagePath: 'assets/onboarding/slide-1.jpg',
        title: 'مرحبا',
      ),
    ]);
    getIt.registerSingleton<ThemeBloc>(ThemeBloc());
    getIt.registerSingleton<OnboardingBloc>(OnboardingBloc(repository));
    getIt<OnboardingBloc>().add(const OnboardingEvent.started());
  });

  testWidgets('renders the first slide with skip and theme controls', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, _) => const OnboardingView(),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 200));

    expect(find.text('تخطي'), findsOneWidget);
    expect(find.byTooltip('تبديل المظهر'), findsOneWidget);
    expect(find.text('ابدأ'), findsOneWidget);
  });
}
