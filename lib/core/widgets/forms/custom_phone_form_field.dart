import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'custom_text_form_header.dart';

class CustomPhoneFormField extends StatelessWidget {
  const CustomPhoneFormField({
    super.key,
    this.controller,
    required this.onChanged,
    required this.labelText,
    required this.isRequired,
  });

  final TextEditingController? controller;
  final void Function(PhoneNumber)? onChanged;
  final String labelText;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormHeader(
          labelText: labelText,
          tag: isRequired ? "مطلوب" : null,
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: IntlPhoneField(
            key: const Key('phone_field'),
            controller: controller,
            initialCountryCode: 'EG',
            textAlign: .right,
            textAlignVertical: .center,
            dropdownIconPosition: .trailing,
            dropdownIcon: Icon(
              Icons.arrow_drop_down,
              color: context.colorScheme.onSurfaceVariant,
            ),
            flagsButtonMargin: .all(6.r),
            decoration: InputDecoration(
              hintText: '010 1234 5678',
              suffixIcon: Icon(
                Icons.phone_iphone_outlined,
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            onChanged: onChanged,
            pickerDialogStyle: PickerDialogStyle(
              backgroundColor: context.colorScheme.surface,
              searchFieldInputDecoration: InputDecoration(
                hintText: 'بحث عن دولة...',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
