import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_entity.freezed.dart';
part 'job_entity.g.dart';

@freezed
abstract class JobEntity with _$JobEntity {
  const factory JobEntity({
    required String id,
    required String title,
    required String description,
    required String location,
    required String companyName,
  }) = _JobEntity;

  factory JobEntity.fromJson(Map<String, dynamic> json) => _$JobEntityFromJson(json);
}
