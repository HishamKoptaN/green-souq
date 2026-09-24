import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.textInputType,
    this.obscureText = false,
    this.maxLines = 1,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.width,
    this.height,
    this.inputFormatters,
    this.enabled = true,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final TextInputType? textInputType;
  final bool obscureText;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final double? width;
  final double? height;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      textAlign: .right,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: .none,
      ),
    );
  }
}
