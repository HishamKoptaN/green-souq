import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/complaints_bloc.dart';
import 'complaint_form_fields.dart';

class ComplaintDialog extends StatefulWidget {
  const ComplaintDialog({super.key});

  @override
  State<ComplaintDialog> createState() => _ComplaintDialogState();
}

class _ComplaintDialogState extends State<ComplaintDialog> {
  late final TextEditingController _titleController;
  late final TextEditingController _descController;
  String? _titleError;
  String? _descriptionError;

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
    final messenger = ScaffoldMessenger.of(context);
    BlocProvider.of<ComplaintsBloc>(context)
        .add(ComplaintsEvent.create(title: title, description: description));
    Navigator.pop(context);
    messenger.showSnackBar(
      const SnackBar(content: Text('تم إرسال الشكوى بنجاح')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('شكوى جديدة', style: Theme.of(context).textTheme.titleMedium),
      content: ComplaintFormFields(
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
        ElevatedButton(onPressed: _submit, child: const Text('إرسال')),
      ],
    );
  }
}
