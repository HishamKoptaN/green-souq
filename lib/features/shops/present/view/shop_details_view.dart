import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_details_body.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../bloc/shops_bloc.dart';

class ShopDetailsView extends StatefulWidget {
  const ShopDetailsView({super.key, required this.shop});

  final ShopEntity shop;
  static const String routeName = 'shop-details';

  @override
  State<ShopDetailsView> createState() => _ShopDetailsViewState();
}

class _ShopDetailsViewState extends State<ShopDetailsView> {
  final TextEditingController _notesController = TextEditingController(
    text: 'المحل ملتزم جداً بالسداد النقدي عند الاستلام، ومستودع التفريغ جاهز دائماً في الفترة الصباحية. يفضل التواصل هاتفياً قبل الوصول بنصف ساعة لتجهيز العمال.',
  );

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _appendNote(String noteText) {
    {
      setState(() {
        if (_notesController.text.trim().isNotEmpty) {
          _notesController.text += '\n$noteText';
        } else {
          _notesController.text = noteText;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return CustomScaffold(
        appBar: AppBar(
          title: Text('تفاصيل المحل'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            tooltip: 'رجوع',
          ),
        ),
        body: BlocBuilder<ShopsBloc, ShopsState>(
          bloc: getIt<ShopsBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (st) {
                return ShopDetailsBody(
                  shop: widget.shop,
                  onAppendNote: _appendNote,
                  onSubmit: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          spacing: 8.w,
                          children: [
                            Icon(
                              Icons.task_alt,
                              color: context.colorScheme.inversePrimary,
                              size: 20.r,
                            ),
                            const Text(
                              'تم حفظ وتحديث تقييم المحل بنجاح في شبكة المندوبين',
                            ),
                          ],
                        ),
                        backgroundColor: context.colorScheme.inverseSurface,
                        behavior: .floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: .circular(12.r),
                        ),
                      ),
                    );
                  },
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
