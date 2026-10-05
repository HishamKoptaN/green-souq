import 'package:error_handler/error_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/create_post_body.dart';
import '../../data/models/posts_res_model.dart';
import '../../data/models/toggle_like_req_body.dart';
import '../entities/posts_res_entity.dart';
import '../repo/posts_repo.dart';

@lazySingleton
class PostsUseCases {
  final PostsRepo postsRepo;
  PostsUseCases({required this.postsRepo});
  Stream<PostsResEntity> watch() {
    return postsRepo.watch();
  }

  Future<ExecuteGuard<void>> get({
    required int page,
    String? type,
    int? userId,
  }) async {
    return await postsRepo.getPosts(page: page, type: type, userId: userId);
  }

  Future<ExecuteGuard<PostModel?>> createPost({
    required CreatePostModel createPostReqBody,
    List<XFile>? mediaFiles,
  }) async {
    return await postsRepo.createPost(
      createPostReqBody: createPostReqBody,
      mediaFiles: mediaFiles,
    );
  }

  Future<ExecuteGuard<void>> toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  }) async {
    return await postsRepo.toggleLike(toggleLikeReqBody: toggleLikeReqBody);
  }

  Future<ExecuteGuard<void>> deletePost({required int id}) async {
    return await postsRepo.deletePost(id: id);
  }
}
