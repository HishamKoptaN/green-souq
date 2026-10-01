import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';

@freezed
abstract class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    int? total,
    @Default(1) int currentPage,
    int? totalPages,
    int? perPage,
    @Default(true) bool hasNextPage,
    @Default(true) bool hasPreviousPage,
  }) = _MetaEntity;
}
