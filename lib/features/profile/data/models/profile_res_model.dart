import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_res_model.freezed.dart';
part 'profile_res_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    String? userType,
    String? avatar,
    String? name,
    String? bio,
    String? address,
    String? phone,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
