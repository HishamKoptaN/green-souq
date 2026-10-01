import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/core/di/dependency_injection.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../profile/present/bloc/profile_bloc.dart';
import '../../../../cmnts/present/bloc/cmnts_bloc.dart';

void showCommentsSheet({required BuildContext context, required int id}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: .vertical(top: .circular(16.r)),
    ),
    builder: (context) {
      getIt<CmntsBloc>().add(
        .getCmnts(page: 1, commentableId: id, commentableType: 'social'),
      );
      return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return Padding(
            padding: .all(8.r),
            child: BlocBuilder<CmntsBloc, CmntsState>(
              bloc: getIt<CmntsBloc>(),
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (st) {
                    return Column(
                      children: [
                        Container(
                          height: 5.h,
                          width: 40.w,
                          margin: .symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: .circular(10.r),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            Expanded(
                              child: Text(
                                "تعليقات المنشور",
                                textAlign: .center,
                                style: context.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: st.cmntsRes.cmnts.isEmpty
                              ? CustomEmptyWidget(
                                  icon: Icon(Icons.forum_outlined, size: 32.r),
                                  title: "لا توجد تعليقات",
                                  subtitle: '',
                                )
                              : ListView.builder(
                                  controller: scrollController,
                                  itemCount: st.cmntsRes.cmnts.length,
                                  itemBuilder: (context, index) {
                                    final cmnt = st.cmntsRes.cmnts[index];
                                    return ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          cmnt.author?.avatar ?? '',
                                        ),
                                      ),
                                      title: Text(
                                        cmnt.author?.name ?? '',
                                        style: context.textTheme.titleMedium,
                                      ),
                                      subtitle: Text(cmnt.comment ?? ''),
                                    );
                                  },
                                ),
                        ),
                        Row(
                          mainAxisSize: .min,
                          children: [
                            BlocBuilder<ProfileBloc, ProfileState>(
                              bloc: getIt<ProfileBloc>(),
                              builder: (context, state) {
                                return state.maybeMap(
                                  loaded: (st) {
                                    return GestureDetector(
                                      onTap: () async {},
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          st.editableProfileReq.avatarPath ??
                                              '',
                                        ),
                                      ),
                                    );
                                  },
                                  orElse: () {
                                    return InkWell(
                                      onTap: () async {},
                                      child: SizedBox(),
                                    );
                                  },
                                );
                              },
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                initialValue: st.createCmnt.comment.value,
                                onChanged: (v) {
                                  getIt<CmntsBloc>().add(
                                    .dataChanged(
                                      st.createCmnt.copyWith(
                                        comment: GenericFormInput.dirty(
                                          value: v,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                decoration: InputDecoration(
                                  hintText: "اكتب تعليقًا...",
                                  border: OutlineInputBorder(
                                    borderRadius: .circular(12.r),
                                    borderSide: .none,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.send,
                                color: context.colorScheme.primary,
                                size: 24.r,
                              ),
                              onPressed: () async {
                                getIt<CmntsBloc>().add(
                                  .dataChanged(
                                    st.createCmnt.copyWith(
                                      commentableId: id,
                                      commentableType: 'social',
                                    ),
                                  ),
                                );
                                getIt<CmntsBloc>().add(.createCmnt());
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  orElse: () {
                    return const CustomCircularProgress();
                  },
                );
              },
            ),
          );
        },
      );
    },
  );
}
