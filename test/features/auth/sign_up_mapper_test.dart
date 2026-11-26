import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/features/auth/sign_up/data/mappers/sign_up_mapper.dart';
import 'package:green/features/auth/sign_up/domain/entities/shop/shop_registration_entity.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

void main() {
  test('maps shop registration details into the request model', () {
    final request = SignUpReqEntity(
      userType: UserType.shop,
      shopRegistration: const ShopRegistrationEntity(
        shopName: GenericFormInput.dirty(value: 'الواحة'),
        commercialRegistration: GenericFormInput.dirty(value: '12345'),
        specialization: GenericFormInput.dirty(value: 'أدوات زراعية'),
        activities: ['بذور', 'أسمدة'],
      ),
    );

    final model = request.toModel(idToken: 'token');

    expect(model.shopName, 'الواحة');
    expect(model.commercialRegistration, '12345');
    expect(model.specialization, 'أدوات زراعية');
    expect(model.shopActivities, ['بذور', 'أسمدة']);
    expect(model.toJson()['shop_name'], 'الواحة');
  });

  test('keeps shop fields empty for non-shop registrations', () {
    final model = SignUpReqEntity().toModel(idToken: 'token');

    expect(model.shopName, isNull);
    expect(model.commercialRegistration, isNull);
    expect(model.shopActivities, isNull);
  });
}
