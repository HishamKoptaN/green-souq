import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';
import 'package:green/features/location/domain/entities/location_entity.dart';
import 'package:green/features/location/domain/usecases/location_use_cases.dart';
import 'package:green/features/location/present/bloc/location_bloc.dart';
import 'package:mocktail/mocktail.dart';

class _MockSignUpUseCases extends Mock implements SignUpUseCases {}

class _MockLocationUseCases extends Mock implements LocationUseCases {}

void main() {
  late _MockSignUpUseCases signUpUseCases;
  late _MockLocationUseCases locationUseCases;

  setUp(() {
    getIt.reset();
    signUpUseCases = _MockSignUpUseCases();
    locationUseCases = _MockLocationUseCases();
    when(() => locationUseCases.getLocation()).thenAnswer((_) async {
      return const ExecuteGuard.success(data: null);
    });
    when(() => locationUseCases.watch()).thenAnswer((_) {
      return Stream<LocationEntity?>.empty();
    });
    getIt.registerSingleton<SignUpUseCases>(signUpUseCases);
    getIt.registerSingleton<SignUpBloc>(
      SignUpBloc(signUpUseCases: signUpUseCases),
    );
    getIt.registerSingleton<LocationUseCases>(locationUseCases);
    getIt.registerSingleton<LocationBloc>(
      LocationBloc(locationUseCases: locationUseCases),
    );
  });

  testWidgets('renders merchant registration with submit disabled', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, _) {
            return const SignUpView(
              userType: UserType.agriculturalToolsMerchant,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('تسجيل تاجر أدوات زراعية'), findsOneWidget);
    expect(find.text('اسم المحل'), findsOneWidget);
    expect(find.text('السجل التجاري'), findsOneWidget);
    expect(find.text('التخصص'), findsOneWidget);
    expect(find.byType(CustomAuthTextFormField), findsNWidgets(6));

    final submit = find.byType(FilledButton).evaluate().single.widget;
    expect((submit as FilledButton).onPressed, isNull);
  });
}
