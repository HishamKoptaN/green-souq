import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../entities/jobs_res_entity.dart';
import '../repo/jobs_repo.dart';

abstract interface class GetJobsUseCaseContract {
  Future<ExecuteGuard<JobsResEntity>> call({
    int page = 1,
    String? query,
  });
}

@lazySingleton
class GetJobsUseCase implements GetJobsUseCaseContract {
  final JobsRepo _jobsRepo;

  GetJobsUseCase(this._jobsRepo);

  @override
  Future<ExecuteGuard<JobsResEntity>> call({
    int page = 1,
    String? query,
  }) async {
    return await _jobsRepo.getJobs(page: page, query: query);
  }
}
