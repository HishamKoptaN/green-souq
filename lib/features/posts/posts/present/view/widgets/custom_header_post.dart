import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/features/posts/posts/present/view/widgets/custom_more_horiz_popup.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../folowers/present/bloc/followers_bloc.dart';
import '../../../data/models/posts_res_model.dart';

class CustomHeaderPost extends StatefulWidget {
  CustomHeaderPost({super.key, required this.post});
  Post? post;
  @override
  State<CustomHeaderPost> createState() => _CustomHeaderPostState();
}

class _CustomHeaderPostState extends State<CustomHeaderPost> {
  @override
  void initState() {
    super.initState();
    isFollowing = widget.post?.postOwner?.isFollowing ?? false;
    if (widget.post?.postable?.sharedPost == null) {
      isFollowing = widget.post?.postOwner?.isFollowing ?? false;
    } else {
      isFollowing =
          widget.post?.postable?.sharedPost?.postOwner?.isFollowing ?? false;
    }
  }

  bool isFav = false;
  bool? isFollowing;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return FollowersBloc(followersUseCases: getIt());
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pushReplacementNamed(
          //       context,
          //       OtherUserProfileView.routeName,
          //       arguments: widget.post?.postOwner?.id,
          //     );
          //   },
          //   child: HoverWrapper(
          //     child: CustomProfileAndInfoPage(
          //       imagesProfile: widget.post?.postOwner?.image ?? '',
          //       userName: widget.post?.postOwner?.name ?? '',
          //       jobTitle: '',
          //       date: widget.post?.publishAt ?? '',
          //       type: widget.post?.type,
          //     ),
          //   ),
          // ),
          const Spacer(),
          //  GestureDetector(
          //    onTap: () {
          //      setState(() {
          //        isFav = !isFav;
          //      });
          //    },
          //    child: HoverWrapper(
          //      child: Icon(
          //        isFav ? Icons.bookmark : Icons.bookmark_outline,
          //        size: 20,
          //      ),
          //    ),
          //  ),
          const SizedBox(width: 16),
          if (widget.post?.postOwner?.isFollowing != null)
            //GestureDetector(
            //  onTap: () {
            //    setState(() {
            //      isFollowing = !isFollowing!;
            //    });
            //    context.read<FollowersBloc>().add(
            //      FollowersEvent.toggleFolower(
            //        id: widget.post?.postOwner?.id ?? 0,
            //      ),
            //    );
            //  },
            //  child: HoverWrapper(
            //    child: Container(
            //      width: 66,
            //      height: 26,
            //      decoration: ShapeDecoration(
            //        shape: RoundedRectangleBorder(
            //          borderRadius: BorderRadius.circular(8),
            //          side: const BorderSide(
            //            color: AppColors.primaryColor,
            //            width: 1,
            //          ),
            //        ),
            //      ),
            //      child: Padding(
            //        padding: const EdgeInsets.symmetric(
            //          horizontal: 6.0,
            //          vertical: 5,
            //        ),
            //        child: Row(
            //          mainAxisAlignment: MainAxisAlignment.center,
            //          mainAxisSize: MainAxisSize.min,
            //          children: [
            //            Text(
            //              isFollowing! ? "متابع" : "متابعة",
            //              style: TextStyles.bold10.copyWith(
            //                color: AppColors.primaryColor,
            //              ),
            //            ),
            //            if (!isFollowing!) const Spacer(),
            //            if (!isFollowing!)
            //              const Icon(
            //                Icons.add,
            //                color: AppColors.primaryColor,
            //                size: 16,
            //              ),
            //          ],
            //        ),
            //      ),
            //    ),
            //  ),
            //),
            const SizedBox(width: 2),
          CustomMoreHorizPopup(widget: widget),
        ],
      ),
    );
  }
}
