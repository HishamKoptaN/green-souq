import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../bloc/profile_bloc.dart';

class ProfileStickyDock extends StatelessWidget {
  const ProfileStickyDock({
    super.key,
    required this.onCancel,
    required this.formzSubmissionStatus,
  });

  final VoidCallback onCancel;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: FilledButton.icon(
            onPressed: formzSubmissionStatus.isSuccess
                ? () {
                    getIt<ProfileBloc>().add(const .updateProfile());
                  }
                : null,
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
            ),
            icon: formzSubmissionStatus.isInProgress
                ? CustomCircularProgress(
                    // strokeWidth: 2.r,
                    color: context.colorScheme.onPrimary,
                  )
                : FaIcon(FontAwesomeIcons.solidFloppyDisk, size: 18.r),
            label: TrText('حفظ التعديلات'),
          ),
        ),
        Gap(12.w),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 48.h,
            child: OutlinedButton.icon(
              onPressed: formzSubmissionStatus.isInProgress ? null : onCancel,
              style: OutlinedButton.styleFrom(
                backgroundColor: context.colorScheme.surfaceContainerHigh,
                side: BorderSide(color: context.colorScheme.outlineVariant),
                shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
              ),
              icon: FaIcon(
                FontAwesomeIcons.xmark,
                size: 18.r,
                color: context.colorScheme.onSurface,
              ),
              label: TrText(
                'إلغاء',
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
