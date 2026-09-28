import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/hide_req_model.dart';
part 'hide_api.g.dart';

@RestApi()
@lazySingleton
abstract class HideApi {
  @factoryMethod
  factory HideApi(Dio dio) = _HideApi;
  @POST("hides")
  Future<void> hide({@Body() required HideReqModel hideReqModel});
}
