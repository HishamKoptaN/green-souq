import 'package:injectable/injectable.dart';
import '../../domain/entities/job_entity.dart';
import '../../domain/repo/jobs_repo.dart';
import '../datasources/jobs_api.dart';
import '../models/job_model.dart';

@LazySingleton(as: JobsRepo)
class JobsRepoImpl implements JobsRepo {
  final JobsApi _jobsApi;

  JobsRepoImpl(this._jobsApi);

  @override
  Future<List<JobEntity>> getJobs() async {
    final models = await _jobsApi.getJobs();
    return models.map((model) => model.toEntity()).toList();
  }
}
