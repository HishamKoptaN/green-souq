import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../core/widgets/forms/custom_search_widget.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../ads/ad_banner_widget.dart';
import '../../../shops/present/view/shops_body.dart';
import '../../domain/entities/sales_engineer_entity.dart';
import '../bloc/sales_engineers_bloc.dart';
import 'widgets/engineer_card.dart';

class SalesEngineersBody extends StatelessWidget {
  SalesEngineersBody({super.key});
  static const String routeName = 'sales_engineers';

  final PagingController<int, Object> _pagingController = PagingController(
    fetchPage: (pageKey) async {
      getIt<SalesEngineersBloc>().add(.getSalesEngineers(page: pageKey));
      final nextState = await getIt<SalesEngineersBloc>().stream.firstWhere((
        state,
      ) {
        return state.maybeMap(
          loaded: (st) {
            return true;
          },
          orElse: () {
            return false;
          },
        );
      });
      return nextState.maybeMap(
        loaded: (st) {
          final engineers = st.salesEngineersRes.salesEngineers;
          List<Object> pageItems = [];
          for (var i = 0; i < engineers.length; i++) {
            pageItems.add(engineers[i]);
            if ((i + 1) % 2 == 0) {
              pageItems.add(const AdBannerPlaceholder());
            }
          }
          return pageItems;
        },
        orElse: () {
          return [];
        },
      );
    },
    getNextPageKey: (state) {
      if (state.lastPageIsEmpty) return null;
      return (state.keys?.last ?? 0) + 1;
    },
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesEngineersBloc, SalesEngineersState>(
      bloc: getIt<SalesEngineersBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              spacing: 4.h,
              children: [
                Container(
                  padding: .all(16.r),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer,
                    borderRadius: .circular(16.r),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'شبكة التوريد والاستشارات',
                            style: context.textTheme.titleSmall?.copyWith(
                              color: context.colorScheme.primary,
                              fontWeight: .bold,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'مهندسين ومندوبين المبيعات و التوزيع',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.engineering,
                        color: context.colorScheme.primary,
                        size: 28.r,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                CustomSearchWidget(
                  initialValue: '',
                  hintText: 'ابحث عن مهندس مبيعات...',
                  onChanged: (v) {
                    getIt<SalesEngineersBloc>().add(
                      .getSalesEngineers(query: v),
                    );
                    _pagingController.refresh();
                  },
                ),
                PagedListView<int, Object>(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  state: _pagingController.value,
                  fetchNextPage: _pagingController.fetchNextPage,
                  builderDelegate: PagedChildBuilderDelegate<Object>(
                    itemBuilder: (context, item, index) {
                      if (item is AdBannerPlaceholder) {
                        return const AdBannerWidget();
                      }
                      if (item is SalesEngineerEntity) {
                        return EngineerCard(salesEngineer: item);
                      }
                      return const SizedBox.shrink();
                    },
                    firstPageErrorIndicatorBuilder: (context) {
                      return const Center(child: Text('حدث خطأ'));
                    },
                    noItemsFoundIndicatorBuilder: (context) {
                      return CustomEmptyWidget(
                        icon: Icon(
                          Icons.store,
                          size: 48.r,
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                        title: 'لا يوجد مهندسين',
                        subtitle: 'لا يوجد مهندسين',
                      );
                    },
                    firstPageProgressIndicatorBuilder: (context) {
                      return SizedBox(
                        height: 200.h,
                        child: const CustomCircularProgress(),
                      );
                    },
                    newPageProgressIndicatorBuilder: (context) {
                      return CustomCircularProgress();
                    },
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
    );
  }
}
