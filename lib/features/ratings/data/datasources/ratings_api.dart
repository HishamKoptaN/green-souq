import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/rating_req_model.dart';
part 'ratings_api.g.dart';

@RestApi()
@singleton
abstract class RatingsApi {
  @factoryMethod
  factory RatingsApi(Dio dio) = _RatingsApi;

  @PATCH('ratings/{id}')
  Future<void> rate({
    @Path('id') required String id,
    @Body() required RatingReqModel ratingReq,
  });
}
