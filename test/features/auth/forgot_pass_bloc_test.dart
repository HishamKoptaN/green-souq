import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/forgot_password/domain/usecases/send_pass_reset_email_usecase.dart';
import 'package:green/features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockSendPassResetEmail extends Mock
    implements SendPassResetEmailUseCase {}

void main() {
  late MockSendPassResetEmail useCase;

  setUp(() {
    useCase = MockSendPassResetEmail();
  });

  blocTest<ForgotPassBloc, ForgotPassState>(
    'marks the form valid when a valid email is entered',
    build: () => ForgotPassBloc(useCase),
    act: (bloc) {
      bloc.add(
        ForgotPassEvent.dataChanged(
          email: EmailFormInput.dirty('user@example.com'),
        ),
      );
    },
    verify: (bloc) {
      expect(bloc.state, isA<ForgotPassState>());
      bloc.state.maybeWhen(
        loaded: (_, status) {
          expect(status, isNotNull);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<ForgotPassBloc, ForgotPassState>(
    'emits success after sending the reset email',
    build: () {
      when(() => useCase.sendPassResetEmail(email: any(named: 'email')))
          .thenAnswer((_) async => const ExecuteGuard.success(data: null));
      return ForgotPassBloc(useCase);
    },
    act: (bloc) {
      bloc.add(
        ForgotPassEvent.dataChanged(
          email: EmailFormInput.dirty('user@example.com'),
        ),
      );
      bloc.add(const ForgotPassEvent.sendPassResetEmail());
    },
    verify: (bloc) {
      verify(() => useCase.sendPassResetEmail(email: any(named: 'email')))
          .called(1);
    },
  );
}
