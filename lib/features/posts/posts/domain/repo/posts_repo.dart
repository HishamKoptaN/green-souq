import 'package:error_handler/error_handler.dart';

import '../../data/models/create_post_req_body.dart';
import '../../data/models/posts_res_model.dart';
import '../../data/models/share_post_req_body.dart';
import '../../data/models/toggle_like_req_body.dart';

abstract class PostsRepo {
  Future<ExecuteGuard<PostsResModel?>> getPosts({required int? page});
  Future<ExecuteGuard<Post?>> createPost({
    required CreatePostReqBody createPostReqBody,
  });
  Future<ExecuteGuard<Postable?>> createDraftPost({
    required CreatePostReqBody createPostReqBody,
  });
  Future<ExecuteGuard<Post?>> sharePost({
    required SharePostReqBody sharePostReqBody,
  });
  Future<ExecuteGuard<void>> toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  });
  Future<ExecuteGuard<void>> deletePost({required int id});
  Future<ExecuteGuard<void>> vote({required int id});
}
