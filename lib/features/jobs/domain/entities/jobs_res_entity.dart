import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_entity.dart';

part 'jobs_res_entity.freezed.dart';

/// صفحة نتائج الوظائف مع مؤشر existence الصفحة التالية.
@freezed
abstract class JobsResEntity with _$JobsResEntity {
  const factory JobsResEntity({
    @Default(<JobEntity>[]) List<JobEntity> jobs,
    @Default(false) bool hasNextPage,
    @Default(0) int total,
  }) = _JobsResEntity;
}
