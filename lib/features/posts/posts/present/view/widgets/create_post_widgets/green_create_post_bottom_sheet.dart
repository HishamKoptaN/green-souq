import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../bloc/posts_bloc.dart';
import 'green_create_post_header.dart';
import 'green_create_post_content.dart';
import 'green_create_post_footer.dart';

class GreenCreatePostBottomSheet extends StatefulWidget {
  const GreenCreatePostBottomSheet({super.key});

  @override
  State<GreenCreatePostBottomSheet> createState() =>
      _GreenCreatePostBottomSheetState();
}

class _GreenCreatePostBottomSheetState
    extends State<GreenCreatePostBottomSheet> {
  final TextEditingController _textController = TextEditingController();
  int _charCount = 0;
  bool _isLoading = false;
  bool _isSuccess = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _charCount = _textController.text.length;
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _handlePublish() {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(milliseconds: 900), () {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _isSuccess = true;
        });
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (mounted) {
            Navigator.of(context).pop();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: getIt<PostsBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Container(
              padding: .all(8),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerLowest,
                borderRadius: BorderRadius.vertical(top: .circular(28.r)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: .min,
                  spacing: 4.h,
                  children: [
                    GreenCreatePostHeader(
                      onClose: () {
                        Navigator.of(context).pop();
                      },
                      onPublish: _handlePublish,
                      isLoading: _isLoading,
                    ),
                    GreenCreatePostContent(
                      createPostReqBody: st.createPostReqBody,
                      charCount: _charCount,
                    ),
                    GreenCreatePostFooter(
                      onPublishNow: _handlePublish,
                      isLoading: _isLoading,
                      isSuccess: _isSuccess,
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return CustomCircularProgress();
          },
        );
      },
    );
  }
}
