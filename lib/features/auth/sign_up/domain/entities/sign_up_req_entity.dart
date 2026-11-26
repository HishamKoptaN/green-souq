import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'shop/shop_registration_entity.dart';

part 'sign_up_req_entity.freezed.dart';

enum UserType { shop, salesEngineer, farmer, agriculturalToolsMerchant }

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
    ShopRegistrationEntity? shopRegistration,
    @Default('') String address,
    @Default(false) bool acceptTerms,
    @Default(false) bool determineLocation,
    GenericFormInput? latitude,
    GenericFormInput? longitude,
  }) = _SignUpReqEntity;
}
