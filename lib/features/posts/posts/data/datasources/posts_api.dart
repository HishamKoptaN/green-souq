import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';

import 'package:green/features/storage/data/model/presigned_url_res_model.dart';
import 'package:green/features/profile/data/models/presigned/presigned_url_req_model.dart';

import '../models/create_post_body.dart';
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
  Future<PostsResModel> getPosts({
    @Query("page") required int page,
    @Query("type") String? type,
    @Query("user_id") int? userId,
  });
  @POST(ApiConstants.posts)
  Future<PostModel?> create({@Body() required CreatePostModel createPost});
  @POST('posts/presigned')
  Future<PresignedUrlResModel> presignedPostFile({
    @Body() required PresignedUrlReqModel presignedUrlReqModel,
  });
  @POST(ApiConstants.likes)
  Future<void> toggleLike({
    @Body() required ToggleLikeReqBody toggleLikeReqBody,
  });
  @DELETE("${ApiConstants.posts}/{id}")
  Future<void> deletePost({@Path("id") required int id});
}
