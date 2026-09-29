import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/create_post_req_body.dart';
import '../../data/models/posts_res_model.dart';
import '../../data/models/toggle_like_req_body.dart';
import '../repo/posts_repo.dart';

@LazySingleton()
class PostsUseCases {
  final PostsRepo postsRepo;
  PostsUseCases({required this.postsRepo});
  Future<ExecuteGuard<PostsResModel?>> getPosts({
    required int? page,
    required bool? scheduled,
  }) async {
    return await postsRepo.getPosts(page: page);
  }

  Future<ExecuteGuard<Post?>> createPost({
    required CreatePostReqBody createPostReqBody,
  }) async {
    return await postsRepo.createPost(createPostReqBody: createPostReqBody);
  }

  Future<ExecuteGuard<Postable?>> createDraftPost({
    required CreatePostReqBody createPostReqBody,
  }) async {
    return await postsRepo.createDraftPost(
      createPostReqBody: createPostReqBody,
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

  Future<ExecuteGuard<void>> vote({required int id}) async {
    return await postsRepo.vote(id: id);
  }
}
