import 'package:dartz/dartz.dart'; // Assuming standard error handling or ExecuteGuard based on codebase
import '../entities/job_entity.dart';

abstract class JobsRepo {
  Future<List<JobEntity>> getJobs();
}
