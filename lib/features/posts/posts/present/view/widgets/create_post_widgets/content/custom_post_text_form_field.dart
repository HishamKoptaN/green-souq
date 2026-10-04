import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/posts/posts/data/models/create_post_req_body.dart';

import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';
import 'package:green/features/posts/posts/present/view/widgets/video_preview/video_preview_selector.dart';

class HomeCustomPostTextFormField extends StatelessWidget {
  final CreatePostModel createPostReqBody;
  HomeCustomPostTextFormField({super.key, required this.createPostReqBody});
  String? video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(8.0),
      child: Container(
        padding: const .all(1.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: .circular(8),
            // side: const BorderSide(color: AppColors.darkGreyColor, width: 1),
          ),
        ),
        child: Padding(
          padding: const .all(1.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  initialValue: createPostReqBody.content ?? '',
                  maxLines: 1,
                  keyboardType: .multiline,
                  textInputAction: .newline,
                  textAlign: .start,
                  onChanged: (v) {},
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) {
                      return 'يرجى إدخال نص المنشور';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "اكتب المنشور",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: SizedBox(
                      width: 90.w,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () {
                                getIt<PostsBloc>().add(const .draft());
                              },
                              child: Text(
                                "مسودة",
                              ),
                            ),
                            SizedBox(height: 2.h),
                            InkWell(
                              onTap: () async {
                                getIt<PostsBloc>().add(.createPost());
                              },
                              child: MouseRegion(
                                cursor: .defer,
                                child: SizedBox(
                                  child: Text("نشر", overflow: .visible),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    );
  }
}
