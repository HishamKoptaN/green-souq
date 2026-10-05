import 'dart:io';

import 'package:error_handler/error_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:green/features/profile/data/models/presigned/presigned_url_req_model.dart';
import 'package:green/features/storage/data/mapper/mapper.dart';
import 'package:green/features/storage/data/repo/storage_repo.dart';

import '../../domain/entities/posts_res_entity.dart';
import '../../domain/repo/posts_repo.dart';
import '../datasources/posts_api.dart';
import '../mapper/mapper.dart';
import '../models/create_post_body.dart';
import '../models/post_media_model.dart';
import '../../data/models/posts_res_model.dart';
import '../models/toggle_like_req_body.dart';

@LazySingleton(as: PostsRepo)
class PostsRepoImpl implements PostsRepo {
  final PostsApi postsApi;
  final StorageRepo storageRepo;
  PostsRepoImpl({required this.postsApi, required this.storageRepo});
  final _nots$ = BehaviorSubject<PostsResEntity>.seeded(PostsResEntity());
  @override
  Stream<PostsResEntity> watch() {
    return _nots$.stream;
  }

  @override
  Future<ExecuteGuard<void>> getPosts({
    required int page,
    String? type,
    int? userId,
  }) async {
    try {
      final res = await postsApi.getPosts(
        page: page,
        type: type,
        userId: userId,
      );
      final postsResEntity = res.toEntity();
      _nots$.add(
        postsResEntity.copyWith(
          posts: page == 1
              ? postsResEntity.posts
              : [..._nots$.value.posts, ...postsResEntity.posts],
        ),
      );
      return .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<PostModel?>> createPost({
    required CreatePostModel createPostReqBody,
    List<XFile>? mediaFiles,
  }) async {
    try {
      List<PostMediaModel> mediaList = [];
      if (mediaFiles != null && mediaFiles.isNotEmpty) {
        for (var file in mediaFiles) {
          final presignedRes = await postsApi.presignedPostFile(
            presignedUrlReqModel: PresignedUrlReqModel(
              extensionProperty: file.path.split('.').last,
            ),
          );
          final uploadReq = presignedRes.toUploadReqEntity(
            file: File(file.path),
          );
          final uploadResult = await storageRepo.upload(uploadReq: uploadReq);
          bool isUploaded = false;
          uploadResult.when(
            success: (_) {
              isUploaded = true;
              mediaList.add(
                PostMediaModel(
                  filePath: uploadReq.filePath,
                  disk: uploadReq.disk,
                ),
              );
            },
            failure: (errorInfo) {
              isUploaded = false;
            },
          );
          if (!isUploaded) {
            return .failure(
              errorInfo: const ErrorInfo(
                message: 'Failed to upload media file',
              ),
            );
          }
        }
      }
      return .success(
        data: await postsApi.create(
          createPost: createPostReqBody.copyWith(
            media: mediaList.isNotEmpty ? mediaList : null,
          ),
        ),
      );
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  }) async {
    try {
      _nots$.add(
        _nots$.value.copyWith(
          posts: _nots$.value.posts.map((post) {
            if (post.postable?.id == toggleLikeReqBody.likeableId) {
              final isLiked = !(post.postable?.isLike ?? false);
              final currentLikes = post.postable?.likesCount ?? 0;
              return post.copyWith(
                postable: post.postable?.copyWith(
                  isLike: isLiked,
                  likesCount: isLiked
                      ? currentLikes + 1
                      : (currentLikes - 1).clamp(0, 999999),
                ),
              );
            }
            return post;
          }).toList(),
        ),
      );
      await postsApi.toggleLike(toggleLikeReqBody: toggleLikeReqBody);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> deletePost({required int id}) async {
    try {
      await postsApi.deletePost(id: id);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
