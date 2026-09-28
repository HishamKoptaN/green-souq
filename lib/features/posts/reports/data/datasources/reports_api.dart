import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/report_req_model.dart';
part 'reports_api.g.dart';

@RestApi()
@lazySingleton
abstract class ReportApi {
  @factoryMethod
  factory ReportApi(Dio dio) = _ReportApi;
  // ! report status
  @POST("reports")
  Future<void> report({@Body() required ReportReqModel reportReqModel});
}
