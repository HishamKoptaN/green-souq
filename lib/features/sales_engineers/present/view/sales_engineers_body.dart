import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/forms/custom_search_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../custom_pagination_widget.dart';
import '../../../ads/ad_banner_widget.dart';
import '../../domain/entities/sales_engineer_entity.dart';
import '../bloc/sales_engineers_bloc.dart';
import 'widgets/engineer_card.dart';
import 'widgets/sales_engineers_banner.dart';

class SalesEngineersBody extends StatelessWidget {
  const SalesEngineersBody({super.key});
  static const String routeName = 'sales_engineers';

  @override
  Widget build(BuildContext context) {
    {
      return CustomPaginationWidget(
        bottomReachedCallback: () {
          getIt<SalesEngineersBloc>().state.mapOrNull(
            loaded: (st) {
              if (st.salesEngineersRes.meta.hasNextPage) {
                getIt<SalesEngineersBloc>().add(const .fetchNext());
              }
            },
          );
        },
        slivers: [
          BlocBuilder<SalesEngineersBloc, SalesEngineersState>(
            bloc: getIt<SalesEngineersBloc>(),
            builder: (context, state) {
              {
                return state.maybeMap(
                  loaded: (st) {
                    {
                      return SliverToBoxAdapter(
                        child: Column(
                          spacing: 4.h,
                          children: [
                            Gap(10.h),
                            const SalesEngineersBanner(),
                            CustomSearchWidget(
                              initialValue: '',
                              hintText: 'ابحث عن مهندس مبيعات...',
                              onChanged: (v) {
                                {
                                  getIt<SalesEngineersBloc>().add(
                                    .search(query: v),
                                  );
                                }
                              },
                            ),
                            st.isSearching
                                ? CustomCircularProgress()
                                : st.salesEngineersRes.salesEngineers.isEmpty
                                ? CustomEmptyWidget(
                                    icon: Icon(
                                      Icons.engineering_outlined,
                                      size: 48.r,
                                      color:
                                          context.colorScheme.onSurfaceVariant,
                                    ),
                                    title: ' لا يوجد مهندسين مبيعات',
                                    subtitle: 'لا يوجد مهندسين مبيعات',
                                  )
                                : ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount:
                                        st.salesEngineersRes.meta.hasNextPage
                                        ? st
                                                  .salesEngineersRes
                                                  .salesEngineers
                                                  .length +
                                              1
                                        : st
                                              .salesEngineersRes
                                              .salesEngineers
                                              .length,
                                    separatorBuilder: (context, index) {
                                      return Gap(4.h);
                                    },
                                    itemBuilder: (context, index) {
                                      if (index ==
                                          st
                                              .salesEngineersRes
                                              .salesEngineers
                                              .length) {
                                        return Skeletonizer(
                                          enabled: true,
                                          child: EngineerCard(
                                            salesEngineer:
                                                SalesEngineerEntity(),
                                          ),
                                        );
                                      }
                                      if ((index + 1) % 5 == 0) {
                                        return const AdBannerWidget();
                                      }
                                      return EngineerCard(
                                        salesEngineer: st
                                            .salesEngineersRes
                                            .salesEngineers[index],
                                      );
                                    },
                                  ),
                          ],
                        ),
                      );
                    }
                  },
                  orElse: () {
                    {
                      return const SliverFillRemaining(
                        hasScrollBody: false,
                        child: CustomCircularProgress(),
                      );
                    }
                  },
                );
              }
            },
          ),
        ],
      );
    }
  }
}
