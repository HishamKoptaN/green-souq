import 'package:injectable/injectable.dart';
import '../../domain/entities/job_entity.dart';
import '../../domain/repo/jobs_repo.dart';
import '../datasources/jobs_firebase_data_source.dart';
import '../models/job_model.dart';

@LazySingleton(as: JobsRepo)
class JobsRepoImpl implements JobsRepo {
  final JobsFirebaseDataSource _dataSource;

  JobsRepoImpl(this._dataSource);

  @override
  Future<List<JobEntity>> getJobs() async {
    final models = await _dataSource.getJobs();
    return models.map((model) {
      return model.toEntity();
    }).toList();
  }

  @override
  Future<void> saveJob(JobEntity job) async {
    final model = JobModel(
      id: job.id,
      title: job.title,
      description: job.description,
      location: job.location,
      companyName: job.companyName,
    );
    await _dataSource.saveJob(model);
  }
}
