import 'package:injectable/injectable.dart';
import '../entities/job_entity.dart';
import '../repo/jobs_repo.dart';

@lazySingleton
class SaveJobUseCase {
  final JobsRepo _jobsRepo;

  SaveJobUseCase(this._jobsRepo);

  Future<void> call(JobEntity job) async {
    return await _jobsRepo.saveJob(job);
  }
}
