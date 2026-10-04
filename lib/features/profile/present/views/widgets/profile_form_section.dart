import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/custom_text_form_header.dart';
import '../../../../../core/widgets/forms/map_location_picker_field.dart';
import '../../../domain/entities/edited_profile_entity.dart';
import '../../../domain/entities/profile_state_entity.dart';
import '../../bloc/profile_bloc.dart';

class ProfileFormSection extends StatelessWidget {
  const ProfileFormSection({super.key, required this.profileState});

  final ProfileStateEntity profileState;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(20.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: .circular(16.r),
        border: .all(color: context.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          _buildNameField(context),
          Gap(20.h),
          _buildBioField(context),
          Gap(20.h),
          _buildAddressField(context),
          Gap(20.h),
          _buildGpsField(context),
          Gap(20.h),
          _buildPhoneField(context),
        ],
      ),
    );
  }

  Widget _buildNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          labelText: 'الاسم الكامل',
          tag: 'الاسم التجاري المعتمد',
        ),
        Gap(8.h),
        TextFormField(
          initialValue: profileState.name,
          onChanged: (v) {
            getIt<ProfileBloc>().add(
              .dataChanged(
                editedProfile:
                    (profileState.editedProfile ?? const EditedProfileEntity())
                        .copyWith(name: .dirty(value: v)),
              ),
            );
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: context.colorScheme.surfaceContainerLow,
            prefixIcon: Icon(Icons.badge, color: context.colorScheme.primary),
            suffixIcon: Icon(
              Icons.check_circle,
              color: context.colorScheme.primary,
            ),
            border: OutlineInputBorder(
              borderRadius: .circular(12.r),
              borderSide: .none,
            ),
          ),
        ),
        Gap(4.h),
        Text(
          'يظهر هذا الاسم على المنصة'
          'لباقي المستخدمين , المحلات'
          '، المزارع ، مهندسين المبيعات',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildBioField(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          labelText: 'نبذة عنك وعن النشاط الزراعي',
          isRequired: false,
          trailing: Text(
            '${profileState.bio?.length ?? 0} / 150',
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colorScheme.primary,
              fontWeight: .bold,
            ),
          ),
        ),
        Gap(8.h),
        TextFormField(
          initialValue: profileState.bio,
          onChanged: (v) {
            getIt<ProfileBloc>().add(
              .dataChanged(
                editedProfile:
                    (profileState.editedProfile ?? const EditedProfileEntity())
                        .copyWith(bio: v),
              ),
            );
          },
          maxLength: 150,
          maxLines: 3,
          decoration: InputDecoration(
            filled: true,
            fillColor: context.colorScheme.surfaceContainerLow,
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: .circular(12.r),
              borderSide: .none,
            ),
            hintText: 'اكتب نبذة مختصرة عن نشاطك الزراعي...',
          ),
        ),
        Gap(4.h),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              'مختصر يظهر في الدليل ءللمشترين والموزعين',
              style: context.textTheme.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            GestureDetector(
              onTap: () {
                getIt<ProfileBloc>().add(
                  .dataChanged(
                    editedProfile:
                        (profileState.editedProfile ??
                                const EditedProfileEntity())
                            .copyWith(bio: ''),
                  ),
                );
              },
              child: Text(
                'مسح',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAddressField(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(labelText: 'العنوان التفصيلي', tag: 'موقع العمل'),
        Gap(8.h),
        TextFormField(
          initialValue: profileState.address,
          onChanged: (v) {
            getIt<ProfileBloc>().add(
              .dataChanged(
                editedProfile:
                    (profileState.editedProfile ?? const EditedProfileEntity())
                        .copyWith(address: v),
              ),
            );
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: context.colorScheme.surfaceContainerLow,
            prefixIcon: Icon(Icons.place, color: context.colorScheme.primary),
            border: OutlineInputBorder(
              borderRadius: .circular(12.r),
              borderSide: .none,
            ),
            hintText: 'مثال: المحافظة، المركز، الشارع، علامة مميزة...',
          ),
        ),
        Gap(4.h),
        Text(
          'مثال: بجوار مسجد كذا، شارع كذا... لتسهيل الوصول لك ',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildGpsField(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          labelText: 'إحداثيات الموقع الجغرافي (GPS)',
          isRequired: false,
          trailing: Container(
            padding: .symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerHigh,
              borderRadius: .circular(9999.r),
            ),
            child: Text(
              'اختياري',
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
        Gap(8.h),
        MapLocationPickerField(
          selectedLocation: LatLng(
            double.tryParse(profileState.latitude.toString()) ?? 0,
            double.tryParse(profileState.longitude.toString()) ?? 0,
          ),
          onLocationPicked: (latLng) {
            getIt<ProfileBloc>().add(
              .dataChanged(
                editedProfile:
                    (profileState.editedProfile ?? const EditedProfileEntity())
                        .copyWith(
                          latitude: latLng.latitude.toString(),
                          longitude: latLng.longitude.toString(),
                        ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return _PhoneFieldWidget(
      editableProfile: profileState.editedProfile ?? EditedProfileEntity(),
      initialPhone: profileState.phone,
    );
  }
}

class _PhoneFieldWidget extends StatefulWidget {
  const _PhoneFieldWidget({required this.editableProfile, this.initialPhone});

  final EditedProfileEntity editableProfile;
  final String? initialPhone;

  @override
  State<_PhoneFieldWidget> createState() => _PhoneFieldWidgetState();
}

class _PhoneFieldWidgetState extends State<_PhoneFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    String? initVal =
        widget.initialPhone ?? widget.editableProfile.phone?.toString();
    if (initVal != null) {
      if (initVal.startsWith('+20')) {
        initVal = initVal.substring(3);
      } else if (initVal.startsWith('20')) {
        initVal = initVal.substring(2);
      }
      if (initVal.startsWith('0')) {
        initVal = initVal.substring(1);
      }
    }
    _controller = TextEditingController(text: initVal ?? '');
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final text = _controller.text;
    if (text.startsWith('0')) {
      final newText = text.substring(1);
      _controller.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          labelText: 'رقم الموبايل والتواصل المباشر',
          trailing: Container(
            padding: .symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withValues(alpha: 0.1),
              borderRadius: .circular(9999.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.verified,
                  size: 14.r,
                  color: context.colorScheme.primary,
                ),
                Gap(4.w),
                // Text('تم التحقق (OTP)', style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.primary)),
              ],
            ),
          ),
        ),
        Gap(8.h),
        Directionality(
          textDirection: .ltr,
          child: IntlPhoneField(
            controller: _controller,
            initialCountryCode: 'EG',
            textAlign: .right,
            showDropdownIcon: false,
            autovalidateMode: .onUserInteractionIfError,
            textAlignVertical: .center,
            dropdownIconPosition: .trailing,
            dropdownIcon: Icon(Icons.arrow_drop_down),
            flagsButtonMargin: .all(6.r),
            decoration: InputDecoration(
              filled: true,
              fillColor: context.colorScheme.surfaceContainerLow,
              hintText: '11 1234 5678',
              suffixIcon: Icon(Icons.phone_iphone_outlined),
              border: OutlineInputBorder(
                borderRadius: .circular(12.r),
                borderSide: .none,
              ),
            ),
            onChanged: (v) {
              getIt<ProfileBloc>().add(
                .dataChanged(
                  editedProfile: widget.editableProfile.copyWith(
                    phone: v.completeNumber,
                  ),
                ),
              );
            },
          ),
        ),
        Gap(4.h),
        Directionality(
          textDirection: .rtl,
          child: Text(
            'يُستخدم هذا الرقم لإرسال إشعارات الصفقات وعروض الأسعار الفورية',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
