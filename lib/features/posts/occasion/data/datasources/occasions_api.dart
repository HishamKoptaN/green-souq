import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
part 'occasions_api.g.dart';
@RestApi()
@lazySingleton
abstract class OcassionsApi {
  @factoryMethod
  factory OcassionsApi(
    Dio dio, {
    String? baseUrl,
  }) = _OcassionsApi;
  
  // ! toggleOcassionInterest
  @POST('${ApiConstants.occasions}/toggle-interest/{ocassion}')
  Future<void> toggleOccasionInterest({
    @Path('ocassion') required int? id,
  });
}
