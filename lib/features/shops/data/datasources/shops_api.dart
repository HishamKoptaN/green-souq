import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../models/shop_model.dart';
import '../models/shops_res_model.dart';
part 'shops_api.g.dart';

@RestApi()
@singleton
abstract class ShopsApi {
  @factoryMethod
  factory ShopsApi(Dio dio) = _ShopsApi;

  @GET('shops')
  Future<ShopsResModel> getShops({
    @Query('page') int? page,
    @Query('query') String? query,
  });

  @GET('shops/{id}')
  Future<ShopModel> show({@Path('id') required String id});

  @POST('shops/{id}/visit')
  Future<void> recordVisit(@Path('id') String id);
}
