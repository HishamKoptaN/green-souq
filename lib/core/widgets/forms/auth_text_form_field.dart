import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/auto_localizer.dart';
import 'custom_text_form_header.dart';

class CustomAuthTextFormField extends StatefulWidget {
  const CustomAuthTextFormField({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.isRequired,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.maxLines = 1,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.width,
    this.height,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final bool? isRequired;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final double? width;
  final double? height;
  @override
  State<CustomAuthTextFormField> createState() =>
      _CustomAuthTextFormFieldState();
}

class _CustomAuthTextFormFieldState extends State<CustomAuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 1.h,
      children: [
        CustomTextFormHeader(
          labelText: widget.labelText ?? '',
          tag: widget.isRequired == true ? "مطلوب" : '',
        ),
        FutureBuilder<String>(
          future: AutoLocalizer.translate(
            widget.hintText ?? '',
            Localizations.localeOf(context).languageCode,
          ),
          initialData: widget.hintText,
          builder: (context, asyncSnapshot) {
            return TextFormField(
              initialValue: widget.initialValue,
              onChanged: widget.onChanged,
              obscureText: widget.obscureText,
              keyboardType: widget.textInputType,
              textInputAction: widget.textInputAction,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: asyncSnapshot.data ?? '',
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
              ),
            );
          },
        ),
      ],
    );
  }
}
