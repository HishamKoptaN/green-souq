import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/profile/domain/entities/profile_entity.dart';
import 'package:green/features/profile/domain/use_cases/profile_use_cases.dart';
import 'package:green/features/profile/present/bloc/profile_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockProfileUseCases extends Mock implements ProfileUseCases {}

void main() {
  late MockProfileUseCases useCases;
  const profile = ProfileEntity(
    id: 1,
    name: 'مزارع',
    userType: UserType.farmer,
  );

  setUp(() {
    useCases = MockProfileUseCases();
  });

  blocTest<ProfileBloc, ProfileState>(
    'emits loaded with the current profile',
    build: () {
      when(() => useCases.getProfile())
          .thenAnswer((_) async => const ExecuteGuard.success(data: profile));
      return ProfileBloc(useCases);
    },
    expect: () => [isA<ProfileState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (profileState, _) {
          expect(profileState.profile.name, 'مزارع');
          expect(profileState.profile.userType, UserType.farmer);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<ProfileBloc, ProfileState>(
    'emits failure when loading the profile fails',
    build: () {
      when(() => useCases.getProfile()).thenAnswer(
        (_) async => const ExecuteGuard.failure(
          errorInfo: ErrorInfo(message: 'تعذّر تحميل الملف الشخصي'),
        ),
      );
      return ProfileBloc(useCases);
    },
    expect: () => [isA<ProfileState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        failure: (error) {
          expect(error, 'تعذّر تحميل الملف الشخصي');
        },
        orElse: () {
          fail('expected failure state');
        },
      );
    },
  );
}
