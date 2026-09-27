import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/feedback/custom_empty_widget.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/users/data/datasources/users_api.dart';
import 'package:green/features/users/data/mappers/user_mapper.dart';
import 'package:green/features/users/domain/entities/user_entity.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:green/features/ads/ad_banner_widget.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../shops/present/view/shops_body.dart';
import '../bloc/users_bloc.dart';
import 'widgets/card/user_card_widget.dart';
import 'widgets/header/users_header_widget.dart';
import '../../../../core/widgets/forms/custom_search_widget.dart';
import 'widgets/header/users_stats_header_widget.dart';
import 'widgets/map/users_map_widget.dart';

class UsersBody extends StatefulWidget {
  const UsersBody({super.key});
  static const String routeName = 'users';

  @override
  State<UsersBody> createState() {
    return _UsersBodyState();
  }
}

class _UsersBodyState extends State<UsersBody> {
  bool _isMapVisible = false;
  int _totalUsersCount = 0;
  late final PagingController<int, Object> _pagingController = PagingController(
    fetchPage: (pageKey) async {
      if (pageKey == 1) {
        _totalUsersCount = 0;
      }
      final res = await getIt<UsersApi>().getUsers(page: pageKey);
      final users =
          res.users?.map((e) {
            return e.toEntity();
          }).toList() ??
          [];

      List<Object> pageItems = [];
      for (var user in users) {
        _totalUsersCount++;
        pageItems.add(user);
        if (_totalUsersCount % 2 == 0) {
          pageItems.add(const AdBannerPlaceholder());
        }
      }
      return pageItems;
    },
    getNextPageKey: (state) {
      if (state.lastPageIsEmpty) return null;
      return (state.keys?.last ?? 0) + 1;
    },
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      bloc: getIt<UsersBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              spacing: 4.h,
              children: [
                UsersHeaderWidget(
                  user: const UserEntity(),
                  onToggle: (isMap) {
                    setState(() {
                      _isMapVisible = isMap;
                    });
                  },
                ),
                if (_isMapVisible)
                  UsersMapWidget(
                    onShowToast: (msg) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(msg)));
                    },
                  ),
                CustomSearchWidget(
                  initialValue: '',
                  hintText: 'ابحث عن مستخدم...',
                  onChanged: (v) {
                    getIt<UsersBloc>().add(.getUsers(query: v));
                    _pagingController.refresh();
                  },
                ),
                UsersStatsHeaderWidget(usersResEntity: st.usersRes),
                Center(
                  child: PagedListView<int, Object>(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    state: _pagingController.value,
                    fetchNextPage: _pagingController.fetchNextPage,
                    builderDelegate: PagedChildBuilderDelegate<Object>(
                      itemBuilder: (context, item, index) {
                        if (item is AdBannerPlaceholder) {
                          return const AdBannerWidget();
                        }
                        if (item is UserEntity) {
                          return UserCardWidget(user: item);
                        }
                        return const SizedBox.shrink();
                      },
                      firstPageErrorIndicatorBuilder: (context) {
                        return const Center(child: Text('حدث خطأ'));
                      },
                      noItemsFoundIndicatorBuilder: (context) {
                        return CustomEmptyWidget(
                          icon: Icon(
                            Icons.person,
                            size: 48.r,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          title: 'لا يوجد مستخدمون',
                          subtitle: 'لا يوجد مستخدمون',
                        );
                      },
                      firstPageProgressIndicatorBuilder: (context) {
                        return SizedBox(
                          height: 200.h,
                          child: CustomCircularProgress(),
                        );
                      },
                      newPageProgressIndicatorBuilder: (context) {
                        return CustomCircularProgress();
                      },
                    ),
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
