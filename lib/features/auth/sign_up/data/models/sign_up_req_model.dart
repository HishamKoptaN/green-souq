import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_req_model.freezed.dart';
part 'sign_up_req_model.g.dart';

@freezed
abstract class SignUpReqModel with _$SignUpReqModel {
  const factory SignUpReqModel({
    required String name,
    required String phone,
    @JsonKey(name: 'id_token') required String idToken,
    @JsonKey(name: 'user_type') required String userType,
    String? address,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'shop_name') String? shopName,
    @JsonKey(name: 'commercial_registration') String? commercialRegistration,
    @JsonKey(name: 'specialization') String? specialization,
    @JsonKey(name: 'shop_activities') List<String>? shopActivities,
  }) = _SignUpReqModel;

  factory SignUpReqModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpReqModelFromJson(json);
}
