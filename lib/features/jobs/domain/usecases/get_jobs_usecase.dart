import 'package:injectable/injectable.dart';
import '../entities/job_entity.dart';
import '../repo/jobs_repo.dart';

@lazySingleton
class GetJobsUseCase {
  final JobsRepo _jobsRepo;

  GetJobsUseCase(this._jobsRepo);

  Future<List<JobEntity>> call() async {
    return await _jobsRepo.getJobs();
  }
}
