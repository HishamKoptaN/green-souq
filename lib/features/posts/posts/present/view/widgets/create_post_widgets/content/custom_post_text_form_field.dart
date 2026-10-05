import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';

import '../../../../../domain/entities/create_post_entity.dart';

class HomeCustomPostTextFormField extends StatelessWidget {
  final CreatePostEntity createPost;
  const HomeCustomPostTextFormField({super.key, required this.createPost});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(8.r),
      child: Container(
        padding: .all(1.r),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: .circular(8.r),
            // side: const BorderSide(color: AppColors.darkGreyColor, width: 1),
          ),
        ),
        child: Padding(
          padding: .all(1.r),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  initialValue: createPost.content ?? '',
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
                    border: .none,
                    focusedBorder: .none,
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: SizedBox(
                      width: 90.w,
                      child: Padding(
                        padding: .all(2.r),
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .center,
                          mainAxisSize: .max,
                          children: [
                            InkWell(
                              onTap: () {
                                getIt<PostsBloc>().add(const .draft());
                              },
                              child: Text("مسودة"),
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
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8));
  }
}
