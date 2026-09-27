import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../../../location/present/bloc/location_bloc.dart';
import '../../../../domain/entities/users_res_entity.dart';

class UsersStatsHeaderWidget extends StatelessWidget {
  final UsersResEntity usersResEntity;
  const UsersStatsHeaderWidget({super.key, required this.usersResEntity});

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: AppPadding.internalChildSymmetric,
        child: BlocBuilder<LocationBloc, LocationState>(
          bloc: getIt<LocationBloc>(),
          builder: (context, locationState) {
            return locationState.maybeMap(
              loaded: (st) {
                return Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: context.colorScheme.primary,
                        ),
                        SizedBox(width: 6.w),
                        TrText(
                          '${usersResEntity.meta.total} مستخدم نشط في نطاق',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurface,
                          ),
                        ),
                        TrText(
                          st.placeName,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    TrText(
                      'مرتب حسب الأقرب',
                      overflow: .ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        ),
      );
    }
  }
}
