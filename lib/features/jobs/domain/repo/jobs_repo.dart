import 'package:dartz/dartz.dart';
import '../entities/job_entity.dart';

abstract class JobsRepo {
  Future<List<JobEntity>> getJobs();
  Future<void> saveJob(JobEntity job);
}
