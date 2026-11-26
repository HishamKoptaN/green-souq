import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_entity.freezed.dart';

@freezed
abstract class FarmEntity with _$FarmEntity {
  const factory FarmEntity({
    required String id,
    required String name,
    required String location,
  }) = _FarmEntity;
}
