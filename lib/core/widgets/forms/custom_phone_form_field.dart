import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'custom_text_form_header.dart';

class CustomPhoneFormField extends StatelessWidget {
  const CustomPhoneFormField({
    super.key,
    required this.onChanged,
    required this.labelText,
    required this.isRequired,
  });

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
          textDirection: .ltr,
          child: IntlPhoneField(
            onChanged: onChanged,
            initialCountryCode: 'EG',
            textAlign: .right,
            showDropdownIcon: false,
            autovalidateMode: .onUserInteractionIfError,
            textAlignVertical: .center,
            dropdownIconPosition: .trailing,
            dropdownIcon: Icon(Icons.arrow_drop_down),
            flagsButtonMargin: .all(6.r),
            decoration: InputDecoration(
              hintText: '11 1234 5678',
              suffixIcon: Icon(Icons.phone_iphone_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
