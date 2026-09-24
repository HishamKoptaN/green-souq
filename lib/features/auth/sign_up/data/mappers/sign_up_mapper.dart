import '../../domain/entities/sign_up_req_entity.dart';
import '../models/sign_up_req_model.dart';

extension SignUpReqMapper on SignUpReqEntity {
  SignUpReqModel toModel({required String idToken}) {
    return SignUpReqModel(
      name: name?.value ?? '',
      phone: phone?.value ?? '',
      idToken: idToken,
      userType: userType?.name ?? '',
      address: address,
      latitude: double.tryParse(latitude?.value ?? "0"),
      longitude: double.tryParse(longitude?.value ?? "0"),
    );
  }
}
