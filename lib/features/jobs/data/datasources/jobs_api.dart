import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import '../models/job_model.dart';

part 'jobs_api.g.dart';

@injectable
@RestApi()
abstract class JobsApi {
  @factoryMethod
  factory JobsApi(Dio dio) = _JobsApi;

  @GET('/jobs')
  Future<List<JobModel>> getJobs();
}
