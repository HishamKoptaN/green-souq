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
  // ! Get cmnts
  @GET("${ApiConstants.cmnts}/{postId}")
  Future<CmntsResModel?> getCmnts({
    @Path("postId") required int postId,
    @Query("page") required int page,
  });
  // ! cmnt
  @POST(ApiConstants.cmnts)
  Future<Cmnt?> cmnt({@Body() required CreateCmntReqBody createCmntReqBody});
}
