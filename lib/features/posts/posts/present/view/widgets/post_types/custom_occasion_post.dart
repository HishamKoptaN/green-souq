import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/core/widgets/custom_button.dart';

import '../../../../../occasion/present/bloc/occasions_bloc.dart';
import '../../../../../occasion/present/bloc/occasions_event.dart';
import '../../../../data/models/posts_res_model.dart';

class CustomOccasionPost extends StatefulWidget {
  CustomOccasionPost({super.key, required this.post});
  Post? post;

  @override
  State<CustomOccasionPost> createState() => _CustomOccasionPostState();
}

class _CustomOccasionPostState extends State<CustomOccasionPost> {
  late bool isInterested;

  @override
  void initState() {
    super.initState();
    isInterested = widget.post?.postable?.isInterested ?? false;
  }

  void _toggleInterest() {
    setState(() {
      isInterested = !isInterested;
    });
    context.read<OccasionsBloc>().add(
      OccasionsEvent.toggleOcassionInterest(id: widget.post?.postable?.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.network(
            widget.post?.postable?.image ?? '',
            width: double.infinity,
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) {
              return const SelectableText("حدث مشكلة اثناء تحميل الصورة");
            },
          ),
        ),
        const SizedBox(height: 16),
        SelectableText(
          widget.post?.postable?.startAt.toString() ?? '',
          style: TextStyles.regular12.copyWith(color: const Color(0xff4D53F5)),
        ),
        const SizedBox(height: 8),
        SelectableText(
          widget.post?.postable?.title ?? '',
          style: TextStyles.bold16,
        ),
        const SizedBox(height: 8),
        SelectableText(
          widget.post?.postable?.description ?? '',
          style: TextStyles.regular14.copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(height: 16),
        CustomButton(
          onPressed: () {
            _toggleInterest();
            context.read<OccasionsBloc>().add(
              OccasionsEvent.toggleOcassionInterest(
                id: widget.post?.postable?.id,
              ),
            );
          },
          text: "مهتم",
          // backgroundColor: isInterested == true
          //     ? AppColors.primaryColor.withOpacity(0.5)
          //     : AppColors.primaryColor,
        ),
      ],
    );
  }
}
