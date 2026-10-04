import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_model.freezed.dart';
part 'update_profile_req_model.g.dart';

@freezed
abstract class UpdateProfileReqModel with _$UpdateProfileReqModel {
  const factory UpdateProfileReqModel({
    @JsonKey(includeIfNull: false) String? avatar,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? bio,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? address,
    @JsonKey(includeIfNull: false) String? latitude,
    @JsonKey(includeIfNull: false) String? longitude,
  }) = _UpdateProfileReqModel;

  factory UpdateProfileReqModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileReqModelFromJson(json);
}
