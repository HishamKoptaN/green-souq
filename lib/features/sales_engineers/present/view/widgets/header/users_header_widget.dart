import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../location/present/bloc/location_bloc.dart';

class UsersHeaderWidget extends StatelessWidget {
  const UsersHeaderWidget({
    super.key,
    required this.user,
    required this.onToggle,
  });
  final SalesEngineerEntity user;
  final ValueChanged<bool> onToggle;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: AppPadding.internalChildSymmetric,
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            BlocConsumer<LocationBloc, LocationState>(
              bloc: getIt<LocationBloc>(),
              listener: (_, state) async {
                await state.mapOrNull(
                  failure: (st) {
                    context.showErrorSnackBar(
                      title: st.errorInfo.title,
                      message: st.errorInfo.message,
                    );
                  },
                );
              },
              builder: (c, state) {
                return state.maybeMap(
                  loaded: (st) {
                    return Row(
                      children: [
                        Container(
                          padding: .all(4.r),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary.withValues(
                              alpha: 0.1,
                            ),
                            shape: .circle,
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            color: context.colorScheme.primary,
                            size: 24.r,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'مكانك الحالي',
                              style: context.textTheme.labelSmall?.copyWith(),
                            ),
                            Text(
                              st.placeName,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontWeight: .w200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  orElse: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                  failure: (st) {
                    return Center(
                      child: Text(
                        'Failed to load data: ${st.errorInfo.message}',
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      );
    }
  }
}
