import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../sign_in/present/views/sign_in_view.dart';
import '../../../sign_up/domain/entities/sign_up_req_entity.dart';
import 'widgets/account_type_selector_widget.dart';
import 'widgets/build_option_card.dart';

class SelectAccountTypeView extends StatelessWidget {
  SelectAccountTypeView({super.key});
  static const String routeName = 'select-account-type';

  final ValueNotifier<UserType> selectedRole = ValueNotifier<UserType>(.shop);

  @override
  Widget build(BuildContext context) {
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
                Text('المساعدة', style: context.textTheme.labelMedium),
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
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: .bold,
                      ),
                    ),
                    Text(
                      ' السوق الاخضر للأعمال الزراعية',
                      style: context.textTheme.labelSmall?.copyWith(
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
            spacing: 8.h,
            children: [
              Text(
                'أهلا بيك في السوق الاخضر',
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: .bold,
                ),
              ),
              Text(
                'الشبكة الموثوقة لقطاع التجارة والمدخلات الزراعية. \n اختر صفتك المهنية:',
                style: context.textTheme.bodyMedium,
              ),
              AccountTypeSelectorWidget(
                selectedType: currentRole,
                onChanged: (newType) {
                  selectedRole.value = newType;
                },
              ),
              Gap(8.h),
              FilledButton.tonalIcon(
                onPressed: () {
                  context.go(
                    '${SignUpView.routeName}/${selectedRole.value.name}',
                  );
                },
                label: Text('متابعة'),
                icon: Icon(Icons.arrow_forward_ios, size: 16.r),
                iconAlignment: .end,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.go(SignInView.routeName);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'لديك حساب بالفعل؟ ',
                      style: context.textTheme.labelLarge?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      children: [
                        TextSpan(
                          text: 'تسجيل الدخول',
                          style: context.textTheme.labelLarge?.copyWith(
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
