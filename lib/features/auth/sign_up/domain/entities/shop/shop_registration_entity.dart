import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_registration_entity.freezed.dart';

@freezed
abstract class ShopRegistrationEntity with _$ShopRegistrationEntity {
  const ShopRegistrationEntity._();

  const factory ShopRegistrationEntity({
    GenericFormInput? shopName,
    GenericFormInput? commercialRegistration,
    GenericFormInput? specialization,
    @Default(<String>[]) List<String> activities,
  }) = _ShopRegistrationEntity;

  bool get isValid {
    return Formz.validate([
      shopName ?? const GenericFormInput.pure(),
      commercialRegistration ?? const GenericFormInput.pure(),
      specialization ?? const GenericFormInput.pure(),
    ]);
  }

  bool hasChanges(ShopRegistrationEntity original) {
    return shopName?.value != original.shopName?.value ||
        commercialRegistration?.value !=
            original.commercialRegistration?.value ||
        specialization?.value != original.specialization?.value ||
        activities.length != original.activities.length ||
        activities.any((activity) => !original.activities.contains(activity));
  }
}
