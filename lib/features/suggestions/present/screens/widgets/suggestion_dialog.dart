import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/suggestions_bloc.dart';
import '../../../../presentation/bloc/suggestions_event.dart';

class SuggestionDialog extends StatelessWidget {
  const SuggestionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descController = TextEditingController();
    return AlertDialog(
      title: Text(
        'New Suggestion',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          SizedBox(height: 12.h),
          TextField(
            controller: descController,
            decoration: const InputDecoration(
              labelText: 'Description',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (titleController.text.isNotEmpty &&
                descController.text.isNotEmpty) {
              BlocProvider.of<SuggestionsBloc>(context).add(
                SuggestionsEvent.create(
                  title: titleController.text,
                  description: descController.text,
                ),
              );
              Navigator.pop(context);
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
