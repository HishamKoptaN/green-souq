import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_media_model.freezed.dart';
part 'post_media_model.g.dart';

@freezed
abstract class PostMediaModel with _$PostMediaModel {
  const factory PostMediaModel({
    @JsonKey(name: "file_path") String? filePath,
    @JsonKey(name: "disk") String? disk,
  }) = _PostMediaModel;

  factory PostMediaModel.fromJson(Map<String, dynamic> json) =>
      _$PostMediaModelFromJson(json);
}
