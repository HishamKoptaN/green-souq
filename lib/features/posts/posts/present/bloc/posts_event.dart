part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPosts({required int? page}) = _GetPosts;
  const factory PostsEvent.updateData({
    required CreatePostReqBody createPostReqBody,
  }) = _UpdateData;
  const factory PostsEvent.createPost() = _CreatePost;
  const factory PostsEvent.draft() = _Draft;
  const factory PostsEvent.sharePost({
    required SharePostReqBody sharePostReqBody,
  }) = _SharePost;
  const factory PostsEvent.toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  }) = _ToggleLike;
  const factory PostsEvent.report({required ReportReq reportReq}) = _Report;
  const factory PostsEvent.hide({required HideReq hideReq}) = _Hide;
  const factory PostsEvent.increasePostCmntsCount({required int id}) =
      _IncreasePostCmntsCount;
}
