part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading() = _Loading;
  const factory PostsState.loaded({
    @Default(PostsResEntity()) PostsResEntity postsRes,
    @Default(CreatePostReqBody()) CreatePostReqBody createPostReqBody,
    String? videoPath,
    @Default(false) bool isCreatePostLoading,
    @Default(false) bool hasDraft,
    PostableModel? draftPost,
  }) = _Loaded;
  const factory PostsState.contentUpdated({
    required CreatePostReqBody createPostReqBody,
  }) = _ContentUpdated;
  const factory PostsState.success({
    required bool? create,
    required bool? share,
    required bool? scheduled,
    required bool? draft,
  }) = _Success;
  const factory PostsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
