import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/suggestions_bloc.dart';
import 'suggestion_form_fields.dart';

class SuggestionDialog extends StatefulWidget {
  const SuggestionDialog({super.key});

  @override
  State<SuggestionDialog> createState() => _SuggestionDialogState();
}

class _SuggestionDialogState extends State<SuggestionDialog> {
  late final TextEditingController _titleController;
  late final TextEditingController _descController;
  String? _titleError;
  String? _descriptionError;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _submit() {
    final title = _titleController.text.trim();
    final description = _descController.text.trim();
    setState(() {
      _titleError = title.isEmpty ? 'العنوان مطلوب' : null;
      _descriptionError = description.isEmpty ? 'الوصف مطلوب' : null;
    });
    if (_titleError != null || _descriptionError != null) {
      return;
    }
    setState(() {
      _isSubmitting = true;
    });
    BlocProvider.of<SuggestionsBloc>(context)
        .add(SuggestionsEvent.create(title: title, description: description));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SuggestionsBloc, SuggestionsState>(
      listener: (context, state) {
        if (!_isSubmitting) {
          return;
        }
        state.maybeWhen(
          loaded: (_) {
            _isSubmitting = false;
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('تم إرسال المقترح بنجاح')),
            );
          },
          failure: (message) {
            setState(() {
              _isSubmitting = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('تعذّر إرسال المقترح: $message')),
            );
          },
          orElse: () {},
        );
      },
      child: AlertDialog(
        title: Text(
          'اقتراح جديد',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        content: SuggestionFormFields(
          titleController: _titleController,
          descriptionController: _descController,
          titleError: _titleError,
          descriptionError: _descriptionError,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('إلغاء'),
          ),
          ElevatedButton(
            onPressed: _isSubmitting ? null : _submit,
            child: const Text('إرسال'),
          ),
        ],
      ),
    );
  }
}
