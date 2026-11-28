import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/auth/present/bloc/auth_bloc.dart';
import 'package:green/features/auth/sign_in/data/factories/auth_strategy_factory.dart';
import 'package:green/features/auth/sign_in/data/strategies/auth_strategy.dart';
import 'package:green/features/auth/sign_in/domain/entities/sign_in_req_entity.dart';
import 'package:green/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';
import 'package:green/features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockSignInUseCases extends Mock implements SignInUseCases {}

class MockAuthStrategyFactory extends Mock implements AuthStrategyFactory {}

class MockAuthStrategy extends Mock implements AuthStrategy {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  late MockSignInUseCases useCases;
  late MockAuthStrategyFactory factory;
  late MockAuthStrategy strategy;
  late MockAuthBloc authBloc;

  setUp(() {
    registerFallbackValue(const SignInReqEntity());
    registerFallbackValue(MockAuthStrategy());
    registerFallbackValue(AuthType.emailAndPass);
    useCases = MockSignInUseCases();
    factory = MockAuthStrategyFactory();
    strategy = MockAuthStrategy();
    authBloc = MockAuthBloc();
    when(() => authBloc.state).thenReturn(const AuthState.unauthenticated());
    when(() => factory.getStrategy(type: any(named: 'type')))
        .thenReturn(strategy);
  });

  SignInBloc buildBloc({required ExecuteGuard<void> result}) {
    when(
      () => useCases.signIn(
        signInReq: any(named: 'signInReq'),
        strategy: any(named: 'strategy'),
      ),
    ).thenAnswer((_) async => result);
    return SignInBloc(
      signInUseCases: useCases,
      authBloc: authBloc,
      strategyFactory: factory,
    );
  }

  blocTest<SignInBloc, SignInState>(
    'asks for profile completion after a Google sign in',
    build: () {
      return buildBloc(result: const ExecuteGuard.success(data: null));
    },
    act: (bloc) {
      bloc.add(const SignInEvent.signIn(type: AuthType.google));
    },
    verify: (bloc) {
      expect(bloc.state, isA<SignInState>());
      verify(
        () => useCases.signIn(
          signInReq: any(named: 'signInReq'),
          strategy: any(named: 'strategy'),
        ),
      ).called(1);
    },
  );

  blocTest<SignInBloc, SignInState>(
    'emits a failure state when the sign in fails',
    build: () {
      return buildBloc(
        result: const ExecuteGuard.failure(
          errorInfo: ErrorInfo(message: 'فشل تسجيل الدخول'),
        ),
      );
    },
    act: (bloc) {
      bloc.add(
        SignInEvent.dataChanged(
          signInReq: SignInReqEntity(
            email: EmailFormInput.dirty('user@example.com'),
            password: PasswordFormInput.dirty('password'),
          ),
        ),
      );
      bloc.add(const SignInEvent.signIn(type: AuthType.emailAndPass));
    },
    verify: (bloc) {
      verify(
        () => useCases.signIn(
          signInReq: any(named: 'signInReq'),
          strategy: any(named: 'strategy'),
        ),
      ).called(1);
    },
  );
}
