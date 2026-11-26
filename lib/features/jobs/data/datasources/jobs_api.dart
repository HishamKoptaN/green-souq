import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/jobs_res_model.dart';

part 'jobs_api.g.dart';

@injectable
@RestApi()
abstract class JobsApi {
  @factoryMethod
  factory JobsApi(Dio dio) = _JobsApi;

  @GET(ApiConstants.jobs)
  Future<JobsResModel> getJobs({
    @Query('page') int? page,
    @Query('query') String? query,
  });
}
