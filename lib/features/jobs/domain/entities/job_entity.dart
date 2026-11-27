import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_entity.freezed.dart';

@freezed
abstract class JobEntity with _$JobEntity {
  const factory JobEntity({
    required String id,
    required String title,
    required String description,
    @Default('') String location,
    @Default('') String companyName,
    @Default('open') String status,
  }) = _JobEntity;
}
