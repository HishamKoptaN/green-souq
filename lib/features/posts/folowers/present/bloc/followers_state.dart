import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/follower_model.dart';
part 'followers_state.freezed.dart';

@freezed
class FollowersState with _$FollowersState {
  const factory FollowersState.initial() = _Initial;
  const factory FollowersState.success() = _Success;
  const factory FollowersState.getFollowersLoading() = _GetFollowersLoading;
  const factory FollowersState.followersLoaded({
    required List<FollowerModel>? followers,
    required bool? hasNextPage,
  }) = _FollowersLoaded;
  const factory FollowersState.getFollowersFailure({
    required ErrorInfo errorInfo,
  }) = _GetFriendFailure;
}
