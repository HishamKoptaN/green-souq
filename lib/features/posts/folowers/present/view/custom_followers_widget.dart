import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_list_view.dart';
import '../../data/models/follower_model.dart';
import '../bloc/followers_bloc.dart';
import '../bloc/followers_event.dart';
import '../bloc/followers_state.dart';
import 'follower_item.dart';

class CustomFollowersWidget extends StatefulWidget {
  const CustomFollowersWidget({
    super.key,
    required this.userId,
    required this.myData,
    this.height,
    this.width,
  });

  final int? userId;
  final bool? myData;
  final double? height;
  final double? width;

  @override
  State<CustomFollowersWidget> createState() => _CustomFollowersWidgetState();
}

class _CustomFollowersWidgetState extends State<CustomFollowersWidget> {
  @override
  void initState() {
    super.initState();
    context.read<FollowersBloc>().add(
      FollowersEvent.getFollowers(userId: widget.userId, myData: widget.myData),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowersBloc, FollowersState>(
      builder: (context, state) {
        return state.maybeWhen(
          followersLoaded: (followers, hasNextPage) {
            return CustomListView<FollowerModel>(
              items: followers,
              builder: (friend) {
                return FollowerItem(friendModel: friend, isFollower: true);
              },
              shimmerItem: const SizedBox(),
              hasMorePages: hasNextPage ?? false,
            );
          },
          getFollowersFailure: (e) {
            return Center(child: Text(e?.toString() ?? ''));
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
