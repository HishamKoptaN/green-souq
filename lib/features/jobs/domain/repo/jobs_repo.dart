import 'package:error_handler/error_handler.dart';

import '../entities/jobs_res_entity.dart';

abstract class JobsRepo {
  Future<ExecuteGuard<JobsResEntity>> getJobs({
    int page = 1,
    String? query,
  });
}
