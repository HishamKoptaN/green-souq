import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/legal_content_entity.dart';

part 'legal_content_model.freezed.dart';
part 'legal_content_model.g.dart';

@freezed
abstract class LegalContentModel with _$LegalContentModel {
  const factory LegalContentModel({
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'content') @Default('') String content,
  }) = _LegalContentModel;

  factory LegalContentModel.fromJson(Map<String, dynamic> json) {
    {
      return _$LegalContentModelFromJson(json);
    }
  }
}

extension LegalContentModelX on LegalContentModel {
  LegalContentEntity toEntity() {
    {
      return LegalContentEntity(
        title: title,
        content: content,
      );
    }
  }
}
