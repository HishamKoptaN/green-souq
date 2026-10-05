import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
abstract class MediaModel with _$MediaModel {
  const factory MediaModel({
    int? id,
    @JsonKey(name: 'mediable_type') String? mediableType,
    @JsonKey(name: 'mediable_id') int? mediableId,
    @JsonKey(name: 'file_path') String? filePath,
    String? disk,
    @JsonKey(name: 'file_type') String? fileType,
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
