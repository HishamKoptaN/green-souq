import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/posts/posts/data/models/create_post_req_body.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../bloc/posts_bloc.dart';
import '../video_preview/video_preview_selector.dart';

class HomeCustomPostTextFormField extends StatelessWidget {
  final CreatePostReqBody createPostReqBody;
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
                    // hintStyle: TextStyles.medium20.copyWith(
                    //   color: AppColors.darkGreyColor,
                    // ),
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
                                // style: createPostReqBody.hasDraft == true
                                //     ? TextStyles.bold13
                                //     : TextStyles.medium13,
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
                if (createPostReqBody.imageUrl != null ||
                    createPostReqBody.image != null)
                  Stack(
                    children: [
                      Container(
                        padding: const .all(10),
                        width: .infinity,
                        decoration: BoxDecoration(borderRadius: .circular(8)),
                        child: ClipRRect(
                          borderRadius: .circular(8),
                          child: createPostReqBody.image != null
                              ? Image.memory(
                                  createPostReqBody.image!,
                                  fit: .fill,
                                )
                              : createPostReqBody.imageUrl != null
                              ? Image.network(
                                  createPostReqBody.imageUrl ?? '',
                                  fit: .fill,
                                )
                              : Container(),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: IconButton(
                          onPressed: () {
                            if (createPostReqBody.image != null) {
                              getIt<PostsBloc>().add(
                                .updateData(
                                  createPostReqBody: createPostReqBody.copyWith(
                                    image: null,
                                  ),
                                ),
                              );
                            } else if (createPostReqBody.imageUrl != null) {
                              context.read<PostsBloc>().add(
                                .updateData(
                                  createPostReqBody: createPostReqBody.copyWith(
                                    imageUrl: null,
                                  ),
                                ),
                              );
                            }
                          },
                          icon: const Icon(Icons.close, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                if (createPostReqBody.video != null ||
                    createPostReqBody.videoUrl != null)
                  Stack(
                    children: [
                      Container(
                        padding: const .all(10),
                        width: .infinity,
                        decoration: BoxDecoration(borderRadius: .circular(8)),
                        child: ClipRRect(
                          borderRadius: .circular(8),
                          child: VideoPreviewSelector(
                            videoBytes: createPostReqBody.video,
                            videoUrl: createPostReqBody.videoUrl,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: IconButton(
                          onPressed: () {
                            context.read<PostsBloc>().add(
                              .updateData(
                                createPostReqBody: createPostReqBody.copyWith(
                                  video: null,
                                  videoUrl: null,
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.close, color: Colors.red),
                        ),
                      ),
                    ],
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
      // borderSide: const BorderSide(color: AppColors.darkGreyColor, width: 0.5),
    );
  }
}
