import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/mapper/meta_mapper.dart';
import '../../../../core/models/meta_model.dart';
import '../../domain/entities/jobs_res_entity.dart';
import 'job_model.dart';

part 'jobs_res_model.freezed.dart';
part 'jobs_res_model.g.dart';

/// استجابة صفحة الوظائف من /api/user/jobs.
@freezed
abstract class JobsResModel with _$JobsResModel {
  const factory JobsResModel({
    @Default(<JobModel>[]) List<JobModel> data,
    MetaModel? meta,
  }) = _JobsResModel;

  factory JobsResModel.fromJson(Map<String, dynamic> json) =>
      _$JobsResModelFromJson(json);
}

extension JobsResModelX on JobsResModel {
  JobsResEntity toEntity() {
    return JobsResEntity(
      jobs: data.map((model) => model.toEntity()).toList(),
      hasNextPage: meta?.toEntity().hasNextPage ?? false,
      total: meta?.total ?? data.length,
    );
  }
}
