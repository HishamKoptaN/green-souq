import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestionFormFields extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final String? titleError;
  final String? descriptionError;

  const SuggestionFormFields({
    super.key,
    required this.titleController,
    required this.descriptionController,
    this.titleError,
    this.descriptionError,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(labelText: 'العنوان'),
        ),
        if (titleError != null)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              titleError!,
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: colorScheme.error),
            ),
          ),
        SizedBox(height: 12.h),
        TextField(
          controller: descriptionController,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'الوصف'),
        ),
        if (descriptionError != null)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              descriptionError!,
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: colorScheme.error),
            ),
          ),
      ],
    );
  }
}
