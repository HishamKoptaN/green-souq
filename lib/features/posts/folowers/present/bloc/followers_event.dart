import 'package:freezed_annotation/freezed_annotation.dart';
part 'followers_event.freezed.dart';

@freezed
class FollowersEvent with _$FollowersEvent {
  const factory FollowersEvent.getFollowers({
    required int? userId,
    required bool? myData,
  }) = GetFollowers;
  const factory FollowersEvent.getMoreFollowers({
    required int? userId,
    required bool? myData,
  }) = GetMoreFollowers;
  const factory FollowersEvent.getSuggestedFollowers() = GetSuggestedFollowers;
  const factory FollowersEvent.toggleFolower({
    required int id,
  }) = ToggleFolower;
}
