import 'package:injectable/injectable.dart';

import '../entities/job_entity.dart';
import '../repo/jobs_repo.dart';

abstract interface class SaveJobUseCaseContract {
  Future<void> call(JobEntity job);
}

@lazySingleton
class SaveJobUseCase implements SaveJobUseCaseContract {
  final JobsRepo _jobsRepo;

  SaveJobUseCase(this._jobsRepo);

  @override
  Future<void> call(JobEntity job) async {
    return await _jobsRepo.saveJob(job);
  }
}
