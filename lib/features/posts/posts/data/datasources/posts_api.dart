import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';
import '../models/posts_res_model.dart';
import '../models/share_post_req_body.dart';
import '../models/toggle_like_req_body.dart';
part 'posts_api.g.dart';

@RestApi()
@lazySingleton
abstract class PostsApi {
  @factoryMethod
  factory PostsApi(Dio dio) = _PostsApi;
  // ! Get
  @GET(ApiConstants.posts)
  Future<PostsResModel?> getPosts({
    @Query("page") required int? page,
    @Query("scheduled") required bool? scheduled,
    @Query("type[]") required List<String>? postTypes,
    @Query("user_id") required int? userId,
    @Query("my_data") required bool? myData,
  });
  // ! create post
  @POST(ApiConstants.posts)
  @MultiPart()
  Future<Post?> createPost({@Body() required FormData formData});
  // ! create draft post
  @POST(ApiConstants.postsDraft)
  @MultiPart()
  Future<Postable?> createDraftPost({@Body() required FormData formData});
  // ! sharePost
  @POST(ApiConstants.sharePost)
  Future<Post?> sharePost({@Body() required SharePostReqBody sharePostReqBody});
  // ! toggle like
  @POST(ApiConstants.likes)
  Future<void> toggleLike({
    @Body() required ToggleLikeReqBody toggleLikeReqBody,
  });
  // ! delete post
  @DELETE("${ApiConstants.posts}/{id}")
  Future<void> deletePost({@Path("id") required int id});
  // ! vote
  @POST(ApiConstants.votes)
  @FormUrlEncoded()
  Future<void> vote({@Field('poll_option_id') required int id});
}
