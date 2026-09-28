import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/post_type.dart';
import '../../../hide/domain/entities/hide_req.dart';
import '../../../reports/domain/entities/report_req.dart';
import '../../data/models/create_post_req_body.dart';
import '../../data/models/scheduled_date_time.dart';
import '../../data/models/share_post_req_body.dart';
import '../../data/models/toggle_like_req_body.dart';
part 'posts_event.freezed.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPosts({
    required List<PostType>? postTypes,
    required int? userId,
    required bool? myData,
  }) = _GetPosts;
  const factory PostsEvent.getScheduledPosts() = _GetScheduledPosts;
  const factory PostsEvent.getMore({
    required List<PostType>? postTypes,
    required int? userId,
    required bool? myData,
  }) = _GetMore;
  const factory PostsEvent.updateData({
    required CreatePostReqBody? createPostReqBody,
    required ScheduledDateTime? scheduledDateTime,
    String? videoPath,
  }) = _UpdateData;
  const factory PostsEvent.draft() = _Draft;
  const factory PostsEvent.createPost({
    required PostType? postType,
    required bool? create,
    required bool? scheduled,
    required bool? draft,
  }) = _CreatePost;
  const factory PostsEvent.sharePost({
    required SharePostReqBody sharePostReqBody,
  }) = _SharePost;
  const factory PostsEvent.toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  }) = _ToggleLike;
  const factory PostsEvent.cancelSchedule() = _CancelSchedule;
  const factory PostsEvent.deletePost({required int id}) = _DeletePost;
  const factory PostsEvent.report({required ReportReq reportReq}) = _Report;
  const factory PostsEvent.hide({required HideReq hideReq}) = _Hide;
  const factory PostsEvent.increasePostCmntsCount({required int id}) =
      _IncreasePostCmntsCount;
  const factory PostsEvent.vote({required int id, required int postId}) = _Vote;
}
