import 'package:injectable/injectable.dart';

import '../entities/job_entity.dart';
import '../repo/jobs_repo.dart';

abstract interface class GetJobsUseCaseContract {
  Future<List<JobEntity>> call();
}

@lazySingleton
class GetJobsUseCase implements GetJobsUseCaseContract {
  final JobsRepo _jobsRepo;

  GetJobsUseCase(this._jobsRepo);

  @override
  Future<List<JobEntity>> call() async {
    return await _jobsRepo.getJobs();
  }
}
