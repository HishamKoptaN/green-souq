import 'package:flutter/material.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    super.key,
    required this.text,
    this.style,
    this.maxLines = 3,
  });

  final String text;
  final TextStyle? style;
  final int maxLines;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;
  bool _isOverflowing = false;
  late String _shortText;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textPainter = TextPainter(
          text: TextSpan(text: widget.text, style: widget.style),
          maxLines: widget.maxLines,
          textAlign: .start,
          textDirection: .rtl,
        )..layout(maxWidth: constraints.maxWidth);
        _isOverflowing = textPainter.didExceedMaxLines;
        if (_isOverflowing) {
          final endIndex = textPainter
              .getPositionForOffset(
                Offset(constraints.maxWidth, textPainter.height),
              )
              .offset;
          _shortText = widget.text.substring(0, endIndex).trim();
          if (_shortText.length < widget.text.length) {
            _shortText = '$_shortText...';
          }
        } else {
          _shortText = widget.text;
        }

        return AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: SizedBox(
            width: .infinity,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                SelectableText(
                  _isExpanded ? widget.text : _shortText,
                  style: widget.style,
                  textAlign: .start,
                ),
                if (_isOverflowing)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Text(
                      _isExpanded ? "إظهار أقل" : "قراءة المزيد",
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
