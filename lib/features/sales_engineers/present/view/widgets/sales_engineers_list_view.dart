import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/feedback/custom_empty_widget.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/ads/ad_banner_widget.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';
import 'package:green/features/shops/present/view/shops_body.dart';
import 'engineer_card.dart';

class SalesEngineersListView extends StatelessWidget {
  const SalesEngineersListView({
    super.key,
    required this.pagingController,
  });

  final PagingController<int, Object> pagingController;

  @override
  Widget build(BuildContext context) {
    {
      return PagedListView<int, Object>(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        state: pagingController.value,
        fetchNextPage: pagingController.fetchNextPage,
        builderDelegate: PagedChildBuilderDelegate<Object>(
          itemBuilder: (context, item, index) {
            {
              if (item is AdBannerPlaceholder) {
                return const AdBannerWidget();
              }
              if (item is SalesEngineerEntity) {
                return EngineerCard(salesEngineer: item);
              }
              return const SizedBox.shrink();
            }
          },
          firstPageErrorIndicatorBuilder: (context) {
            {
              return const Center(child: Text('حدث خطأ'));
            }
          },
          noItemsFoundIndicatorBuilder: (context) {
            {
              return CustomEmptyWidget(
                icon: Icon(
                  Icons.store,
                  size: 48.r,
                  color: context.colorScheme.onSurfaceVariant,
                ),
                title: 'لا يوجد مهندسين',
                subtitle: 'لا يوجد مهندسين',
              );
            }
          },
          firstPageProgressIndicatorBuilder: (context) {
            {
              return SizedBox(
                height: 200.h,
                child: const CustomCircularProgress(),
              );
            }
          },
          newPageProgressIndicatorBuilder: (context) {
            {
              return const CustomCircularProgress();
            }
          },
        ),
      );
    }
  }
}
