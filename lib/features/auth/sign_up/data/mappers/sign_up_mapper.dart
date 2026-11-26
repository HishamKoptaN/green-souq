import '../../domain/entities/sign_up_req_entity.dart';
import '../models/sign_up_req_model.dart';

extension SignUpReqMapper on SignUpReqEntity {
  SignUpReqModel toModel({required String idToken}) {
    final shop = shopRegistration;
    return SignUpReqModel(
      name: name?.value ?? '',
      phone: phone?.value ?? '',
      idToken: idToken,
      userType: userType?.name ?? '',
      address: address,
      latitude: double.tryParse(latitude?.value ?? ''),
      longitude: double.tryParse(longitude?.value ?? ''),
      shopName: shop?.shopName?.value,
      commercialRegistration: shop?.commercialRegistration?.value,
      specialization: shop?.specialization?.value,
      shopActivities: shop == null || shop.activities.isEmpty
          ? null
          : List<String>.unmodifiable(shop.activities),
    );
  }
}
