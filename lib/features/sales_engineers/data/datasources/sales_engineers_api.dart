import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/sales_engineers_res_model.dart';
part 'sales_engineers_api.g.dart';

@RestApi()
@lazySingleton
abstract class SalesEngineersApi {
  @factoryMethod
  factory SalesEngineersApi(Dio dio) = _SalesEngineersApi;

  @GET('sales-engineers')
  Future<SalesEngineersResModel> getSalesEngineers({
    @Query('page') int? page,
    @Query('query') String? query,
  });

  @POST('users/{id}/visit')
  Future<void> recordVisit(@Path('id') String id);
}
