import 'package:flutter/material.dart';

import '../../data/models/follower_model.dart';

class FollowerItem extends StatelessWidget {
  const FollowerItem({
    super.key,
    required this.friendModel,
    required this.isFollower,
  });
  final FollowerModel friendModel;
  final bool? isFollower;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                foregroundImage: Image.network(friendModel.image ?? '').image,
              ),
            ],
          ),
          const SizedBox(width: 8),
          Text(friendModel.name ?? ''),
        ],
      ),
    );
  }
}
