import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/present/view/details/widgets/shop_details_body.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../bloc/shops_bloc.dart';

class ShopDetailsView extends StatefulWidget {
  const ShopDetailsView({super.key, required this.id});

  final int id;
  static const String routeName = 'shop-details';

  @override
  State<ShopDetailsView> createState() => _ShopDetailsViewState();
}

class _ShopDetailsViewState extends State<ShopDetailsView> {
  @override
  void initState() {
    super.initState();
    getIt<ShopsBloc>().add(.show(id: widget.id));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scroll: true,
      appBar: AppBar(title: const Text('تفاصيل المحل')),
      body: BlocBuilder<ShopsBloc, ShopsState>(
        bloc: getIt<ShopsBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (st) {
              return ShopDetailsBody(
                shop: st.shopsRes.shopDetails,
               
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
