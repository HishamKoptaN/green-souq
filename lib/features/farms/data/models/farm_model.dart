import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_model.freezed.dart';
part 'farm_model.g.dart';

@freezed
abstract class FarmModel with _$FarmModel {
  const factory FarmModel({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String name,
    @JsonKey(defaultValue: '') required String location,
  }) = _FarmModel;

  factory FarmModel.fromJson(Map<String, dynamic> json) =>
      _$FarmModelFromJson(json);
}
