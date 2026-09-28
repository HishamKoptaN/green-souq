import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';
import '../models/followers_res_model.dart';
import '../models/follower_model.dart';
import '../models/followings_res_model.dart';
part 'followers_api.g.dart';

@RestApi()
@lazySingleton
abstract class FollowersApi {
  @factoryMethod
  factory FollowersApi(Dio dio) = _FollowersApi;
  // ! getFollowers
  @GET(ApiConstants.followers)
  Future<FollowersResModel> getFollowers({
    @Query("page") required int? page,
    @Query("user_id") required int? userId,
    @Query("my_data") required bool? myData,
  });
  // ! getFolloweings
  @GET(ApiConstants.followings)
  Future<FollowingsResModel> getFolloweings({
    @Query("page") required int? page,
    @Query("user_id") required int? userId,
    @Query("my_data") required bool? myData,
  });

  // ! get Incoming Requests
  @GET(ApiConstants.suggestedFollowers)
  Future<List<FollowerModel>>? getSuggestedFollowers();
  // ! unfriend
  @POST(ApiConstants.toggleFollowFollowers)
  Future<void> toggleFolower({@Path('id') required int id});
}
