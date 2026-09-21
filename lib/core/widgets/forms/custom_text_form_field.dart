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
    this.keyboardType,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.isPassword = false,
    this.maxLines = 1,
    this.onChanged,
    this.onSaved,
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
    this.hintStyle,
    this.labelStyle,
    this.errorStyle,
    this.style,
    this.width,
    this.height,
    this.margin,
    this.showPasswordToggle = true,
    this.iconColor,
    this.errorText,
    this.onFieldSubmitted,
    this.onToggleObscure,
    this.inputFormatters,
    this.decoration,
    this.enabled = true,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool isPassword;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
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
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final TextStyle? style;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool showPasswordToggle;
  final Color? iconColor;
  final String? errorText;
  final ValueChanged<String?>? onFieldSubmitted;
  final VoidCallback? onToggleObscure;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  final bool enabled;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      textAlign: .right,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: .none,
      ),
    );
  }
}
