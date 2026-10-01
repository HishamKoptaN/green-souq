import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/cmnt_model.dart';
import '../models/cmnts_res_model.dart';
import '../models/create_cmnt_req_body.dart';
part 'cmnts_api.g.dart';

@RestApi()
@lazySingleton
abstract class CmntsApi {
  @factoryMethod
  factory CmntsApi(Dio dio) = _CmntsApi;
  @GET(ApiConstants.cmnts)
  Future<CmntsResModel> getCmnts({
    @Query("commentable_id") required int commentableId,
    @Query("commentable_type") required String commentableType,
    @Query("page") required int page,
  });
  // ! cmnt
  @POST(ApiConstants.cmnts)
  Future<CmntModel> cmnt({
    @Body() required CreateCmntReqBody createCmntReqBody,
  });
}
