import 'dart:async';

import 'package:flutter/material.dart';

import '../../theme/extensions/theme_ext.dart';

class CustomSearchWidget extends StatefulWidget {
  const CustomSearchWidget({
    super.key,
    required this.hintText,
    this.onChanged,
    this.initialValue,
  });

  final String hintText;
  final ValueChanged<String>? onChanged;
  final String? initialValue;

  @override
  State<CustomSearchWidget> createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  late final TextEditingController _controller;
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: (value) {
        if (_debounceTimer?.isActive ?? false) {
          _debounceTimer?.cancel();
        }
        _debounceTimer = Timer(const Duration(milliseconds: 550), () {
          widget.onChanged?.call(value);
        });
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(
          Icons.search,
          color: context.colorScheme.onSurfaceVariant,
        ),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
                icon: Icon(Icons.clear, color: context.colorScheme.error),
                onPressed: () {
                  _debounceTimer?.cancel();
                  _controller.clear();
                  widget.onChanged?.call('');
                },
              )
            : null,
      ),
    );
  }
}
