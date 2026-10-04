import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'custom_text_form_header.dart';

class CustomPhoneFormField extends StatefulWidget {
  const CustomPhoneFormField({
    super.key,
    this.initialValue,
    required this.onChanged,
    required this.labelText,
    required this.isRequired,
  });

  final String? initialValue;
  final void Function(PhoneNumber)? onChanged;
  final String labelText;
  final bool isRequired;

  @override
  State<CustomPhoneFormField> createState() => _CustomPhoneFormFieldState();
}

class _CustomPhoneFormFieldState extends State<CustomPhoneFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    String? initVal = widget.initialValue;
    if (initVal != null && initVal.startsWith('0')) {
      initVal = initVal.substring(1);
    }
    _controller = TextEditingController(text: initVal);
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
      children: [
        CustomTextFormHeader(
          labelText: widget.labelText,
          tag: widget.isRequired ? "مطلوب" : null,
        ),
        Directionality(
          textDirection: .ltr,
          child: IntlPhoneField(
            controller: _controller,
            onChanged: widget.onChanged,
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
