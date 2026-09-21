import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_req_entity.freezed.dart';

enum UserType { company, shop, representative, farmer }

@freezed
abstract class SignUpReqEntity with _$SignUpReqEntity {
  const factory SignUpReqEntity({
    GenericFormInput? name,
    PhoneNumberFormInput? phone,
    EmailFormInput? email,
    PasswordFormInput? password,
    PasswordFormInput? confirmPassword,
    @Default(true) bool obscurePassword,
    @Default(false) bool rememberMe,
    GenericFormInput? phoneNumber,
    GenericFormInput? dialCode,
    GenericFormInput? isoCode,
    bool? isValidNumber,
    UserType? userType,
    @Default('') String address,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _SignUpReqEntity;
}
