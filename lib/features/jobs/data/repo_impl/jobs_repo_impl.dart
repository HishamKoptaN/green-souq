import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/jobs_repo.dart';
import '../../domain/entities/jobs_res_entity.dart';
import '../datasources/jobs_api.dart';
import '../models/jobs_res_model.dart';

@LazySingleton(as: JobsRepo)
class JobsRepoImpl implements JobsRepo {
  const JobsRepoImpl(this._api);

  final JobsApi _api;

  @override
  Future<ExecuteGuard<JobsResEntity>> getJobs({
    int page = 1,
    String? query,
  }) {
    return customExecuteApiCall(() async {
      final response = await _api.getJobs(page: page, query: query);
      return response.toEntity();
    });
  }
}
