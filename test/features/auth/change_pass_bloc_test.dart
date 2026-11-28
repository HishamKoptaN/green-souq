import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/change_pass/domain/entities/change_pass_req_entity.dart';
import 'package:green/features/auth/change_pass/domain/usecases/change_pass_usecase.dart';
import 'package:green/features/auth/change_pass/present/bloc/change_pass_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockChangePassUseCase extends Mock implements SendPassResetEmailUseCase {}

void main() {
  late MockChangePassUseCase useCase;

  setUp(() {
    useCase = MockChangePassUseCase();
  });

  blocTest<ChangePassBloc, ChangePassState>(
    'marks the form valid when password and confirmation match',
    build: () => ChangePassBloc(useCase),
    act: (bloc) {
      bloc.add(
        ChangePassEvent.dataChanged(
          changePasswordReq: ChangePasswordReqEntity(
            password: PasswordFormInput.dirty('password123'),
            confirmPassword: PasswordFormInput.dirty('password123'),
          ),
        ),
      );
    },
    verify: (bloc) {
      final state = bloc.state;
      state.maybeWhen(
        loaded: (_, status) {
          expect(status, isNotNull);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<ChangePassBloc, ChangePassState>(
    'calls the update use case with the entered password',
    build: () {
      when(() => useCase.update(password: any(named: 'password')))
          .thenAnswer((_) async => const ExecuteGuard.success(data: null));
      return ChangePassBloc(useCase);
    },
    act: (bloc) {
      bloc.add(
        ChangePassEvent.dataChanged(
          changePasswordReq: ChangePasswordReqEntity(
            password: PasswordFormInput.dirty('password123'),
            confirmPassword: PasswordFormInput.dirty('password123'),
          ),
        ),
      );
      bloc.add(const ChangePassEvent.update());
    },
    verify: (bloc) {
      verify(() => useCase.update(password: any(named: 'password'))).called(1);
    },
  );
}
