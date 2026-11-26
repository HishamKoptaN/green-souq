import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:green/features/auth/sign_up/domain/entities/shop/shop_registration_entity.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import 'package:mocktail/mocktail.dart';

class _MockSignUpUseCases extends Mock implements SignUpUseCases {}

FormzSubmissionStatus _status(SignUpState state) {
  return state.maybeMap(
    loaded: (state) => state.formzSubmissionStatus,
    orElse: () => FormzSubmissionStatus.initial,
  );
}

void main() {
  late SignUpUseCases useCases;

  setUp(() {
    useCases = _MockSignUpUseCases();
  });

  SignUpReqEntity request({ShopRegistrationEntity? shop}) {
    return SignUpReqEntity(
      name: const GenericFormInput.dirty(value: 'المحل'),
      email: const EmailFormInput.dirty('shop@example.com'),
      password: const PasswordFormInput.dirty('123456'),
      confirmPassword: const PasswordFormInput.dirty('123456'),
      acceptTerms: true,
      isValidNumber: true,
      shopRegistration: shop,
    );
  }

  const completeShop = ShopRegistrationEntity(
    shopName: GenericFormInput.dirty(value: 'الواحة'),
    commercialRegistration: GenericFormInput.dirty(value: '12345'),
    specialization: GenericFormInput.dirty(value: 'أدوات زراعية'),
  );

  blocTest<SignUpBloc, SignUpState>(
    'keeps submit disabled while shop details are incomplete',
    build: () => SignUpBloc(signUpUseCases: useCases),
    act: (bloc) {
      bloc.add(
        SignUpEvent.dataChanged(
          signUpReq: request(
            shop: const ShopRegistrationEntity(
              shopName: GenericFormInput.dirty(value: 'الواحة'),
            ),
          ),
        ),
      );
    },
    expect: () => [
      isA<SignUpState>().having(
        _status,
        'status',
        FormzSubmissionStatus.failure,
      ),
    ],
  );

  blocTest<SignUpBloc, SignUpState>(
    'enables submit once all shop details are provided',
    build: () => SignUpBloc(signUpUseCases: useCases),
    act: (bloc) {
      bloc.add(SignUpEvent.dataChanged(signUpReq: request(shop: completeShop)));
    },
    expect: () => [
      isA<SignUpState>().having(
        _status,
        'status',
        FormzSubmissionStatus.success,
      ),
    ],
  );
}
