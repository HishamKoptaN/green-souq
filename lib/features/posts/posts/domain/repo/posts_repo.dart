import 'package:error_handler/error_handler.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/models/create_post_req_body.dart';
import '../../data/models/posts_res_model.dart';
import '../../data/models/share_post_req_body.dart';
import '../../data/models/toggle_like_req_body.dart';
import '../entities/posts_res_entity.dart';

abstract class PostsRepo {
  Stream<PostsResEntity> watch();
  Future<ExecuteGuard<void>> getPosts({
    required int page,
    String? type,
    int? userId,
  });
  Future<ExecuteGuard<PostModel?>> createPost({
    required CreatePostModel createPostReqBody,
    List<XFile>? mediaFiles,
  });
  Future<ExecuteGuard<PostableModel?>> createDraftPost({
    required CreatePostModel createPostReqBody,
    List<XFile>? mediaFiles,
  });
  Future<ExecuteGuard<PostModel?>> sharePost({
    required SharePostReqBody sharePostReqBody,
  });
  Future<ExecuteGuard<void>> toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  });
  Future<ExecuteGuard<void>> deletePost({required int id});
  Future<ExecuteGuard<void>> vote({required int id});
}
