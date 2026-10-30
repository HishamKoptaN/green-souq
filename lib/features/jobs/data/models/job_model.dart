import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/job_entity.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
abstract class JobModel with _$JobModel {
  const factory JobModel({
    required String id,
    required String title,
    required String description,
    required String location,
    required String companyName,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);
}

extension JobModelX on JobModel {
  JobEntity toEntity() {
    return JobEntity(
      id: id,
      title: title,
      description: description,
      location: location,
      companyName: companyName,
    );
  }
}
