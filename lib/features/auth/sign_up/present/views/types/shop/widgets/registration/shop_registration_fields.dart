import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/features/auth/sign_up/domain/entities/shop/shop_registration_entity.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';

import '../activity_chips_field.dart';

class ShopRegistrationFields extends StatelessWidget {
  const ShopRegistrationFields({super.key, required this.signUpReq});

  final SignUpReqEntity signUpReq;

  static String? _required(String? value) =>
      GenericFormInput.dirty(value: value ?? '').errorMessage;

  @override
  Widget build(BuildContext context) {
    final shop = signUpReq.shopRegistration ?? const ShopRegistrationEntity();
    return Column(
      spacing: 4.h,
      children: [
        CustomAuthTextFormField(
          initialValue: shop.shopName?.value ?? signUpReq.name?.value,
          labelText: 'اسم المحل',
          isRequired: true,
          hintText: 'مثال: الواحة الخضراء للمستلزمات الزراعية',
          prefixIcon: const Icon(Icons.storefront_outlined),
          validator: _required,
          onChanged: (value) {
            _update(context, shop, shopName: value, syncName: true);
          },
        ),
        CustomAuthTextFormField(
          initialValue: shop.commercialRegistration?.value,
          labelText: 'السجل التجاري',
          isRequired: true,
          hintText: 'أدخل رقم السجل التجاري',
          prefixIcon: const Icon(Icons.badge_outlined),
          validator: _required,
          onChanged: (value) => _update(context, shop, registration: value),
        ),
        CustomAuthTextFormField(
          initialValue: shop.specialization?.value,
          labelText: 'التخصص',
          isRequired: true,
          hintText: 'أدوات ومستلزمات زراعية',
          prefixIcon: const Icon(Icons.agriculture_outlined),
          validator: _required,
          onChanged: (value) => _update(context, shop, specialization: value),
        ),
        ActivityChipsField(
          selectedActivities: shop.activities,
          onActivitySelected: (activity) {
            final activities = shop.activities.contains(activity)
                ? shop.activities.where((item) => item != activity).toList()
                : [...shop.activities, activity];
            _update(context, shop, activities: activities);
          },
        ),
      ],
    );
  }

  void _update(
    BuildContext context,
    ShopRegistrationEntity shop, {
    String? shopName,
    String? registration,
    String? specialization,
    List<String>? activities,
    bool syncName = false,
  }) {
    final updated = shop.copyWith(
      shopName: shopName == null
          ? shop.shopName
          : GenericFormInput.dirty(value: shopName),
      commercialRegistration: registration == null
          ? shop.commercialRegistration
          : GenericFormInput.dirty(value: registration),
      specialization: specialization == null
          ? shop.specialization
          : GenericFormInput.dirty(value: specialization),
      activities: activities ?? shop.activities,
    );
    context.read<SignUpBloc>().add(
      .dataChanged(
        signUpReq: signUpReq.copyWith(
          name: syncName
              ? GenericFormInput.dirty(value: shopName ?? '')
              : signUpReq.name,
          shopRegistration: updated,
        ),
      ),
    );
  }
}
