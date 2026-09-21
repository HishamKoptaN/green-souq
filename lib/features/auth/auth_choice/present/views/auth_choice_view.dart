import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';

import '../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../sign_in/present/views/sign_in_view.dart';
import '../../../sign_up/domain/entities/sign_up_req_entity.dart';
import 'widgets/build_option_card.dart';

class SelectAccountTypeView extends StatefulWidget {
  const SelectAccountTypeView({super.key});
  static const String routeName = 'select-account-type';

  @override
  State<SelectAccountTypeView> createState() => _SelectAccountTypeViewState();
}

class _SelectAccountTypeViewState extends State<SelectAccountTypeView> {
  final ValueNotifier<UserType> selectedRole = ValueNotifier<UserType>(.shop);
  @override
  void dispose() {
    selectedRole.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 100.w,
        leading: Padding(
          padding: .only(right: 16.w, top: 8.h, bottom: 8.h),
          child: Card(
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text('المساعدة', style: textTheme.labelMedium),
                SizedBox(width: 4.w),
                Icon(
                  Icons.headset_mic_outlined,
                  size: 20.r,
                  color: context.colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: .only(left: 16.w),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .end,
                  children: [
                    Text(
                      'السوق الاخضر',
                      style: textTheme.titleMedium?.copyWith(fontWeight: .bold),
                    ),
                    Text(
                      ' السوق الاخضر للأعمال الزراعية',
                      style: textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Icon(Icons.eco, color: context.colorScheme.primary, size: 28.r),
              ],
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder<UserType>(
        valueListenable: selectedRole,
        builder: (context, currentRole, child) {
          return Column(
            crossAxisAlignment: .start,
            children: [
              Gap(30.h),
              Text(
                'أهلا بيك في السوق الاخضر',
                style: textTheme.headlineSmall?.copyWith(fontWeight: .bold),
              ),
              Gap(8.h),
              Text(
                'الشبكة الموثوقة لقطاع التجارة والمدخلات الزراعية. اختر صفتك المهنية:',
                style: textTheme.bodyMedium,
              ),
              Gap(24.h),
              OptionWidget(
                onTap: () {
                  selectedRole.value = .shop;
                },
                isSelected: selectedRole.value == .shop,
                title: 'محل زراعي',
                badgeText: 'تجزئة',
                subtitle: 'شراء وتوفير البذور والأسمدة بأسعار الجملة',
                icon: Icons.storefront_outlined,
              ),
              Gap(12.h),
              OptionWidget(
                onTap: () {
                  selectedRole.value = .representative;
                },
                isSelected: selectedRole.value == .representative,
                title: 'مندوب مبيعات',
                badgeText: 'مبيعات',
                subtitle: 'إدارة زيارات المحلات والطلبيات الميدانية',
                icon: Icons.badge_outlined,
              ),
              Gap(12.h),
              OptionWidget(
                onTap: () {
                  selectedRole.value = .company;
                },
                isSelected: selectedRole.value == .company,
                title: 'شركة زراعية',
                badgeText: 'توريد',
                subtitle: 'توريد المنتجات بالجملة وإدارة شبكة التوزيع',
                icon: Icons.business_rounded,
              ),
              Gap(30.h),
              FilledButton.tonalIcon(
                onPressed: () {
                  context.goNamed(SignUpView.routeName);
                },
                label: Text('متابعة'),
                icon: Icon(Icons.arrow_forward_ios, size: 16.r),
                iconAlignment: .end,
              ),
              Gap(30.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.go(SignInView.routeName);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'لديك حساب بالفعل؟ ',
                      style: textTheme.labelLarge?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      children: [
                        TextSpan(
                          text: 'تسجيل الدخول',
                          style: textTheme.labelLarge?.copyWith(
                            color: context.colorScheme.primary,
                            fontWeight: .bold,
                            decoration: .underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
