import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../posts/data/models/author.dart';
part 'cmnt_model.freezed.dart';
part 'cmnt_model.g.dart';

@freezed
abstract class CmntModel with _$CmntModel {
  const factory CmntModel({
    required int id,
    String? comment,
    AuthorModel? author,
    @JsonKey(name: "is_author") bool? isAuthor,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _CmntModel;
  factory CmntModel.fromJson(Map<String, dynamic> json) =>
      _$CmntModelFromJson(json);
}
