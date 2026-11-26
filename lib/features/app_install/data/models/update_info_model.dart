import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_info_model.freezed.dart';
part 'update_info_model.g.dart';

@freezed
abstract class UpdateInfoModel with _$UpdateInfoModel {
  const factory UpdateInfoModel({
    @JsonKey(defaultValue: 0) required int latestVersionCode,
    @JsonKey(defaultValue: '1.0.0') required String latestVersionName,
    @JsonKey(defaultValue: '') required String apkUrl,
    @JsonKey(defaultValue: '') required String releaseNotes,
  }) = _UpdateInfoModel;

  factory UpdateInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateInfoModelFromJson(json);
}
