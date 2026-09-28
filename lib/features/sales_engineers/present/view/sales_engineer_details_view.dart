import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../bloc/sales_engineers_bloc.dart';

class SalesEngineerDetailsView extends StatefulWidget {
  const SalesEngineerDetailsView({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;
  static const String routeName = 'user-details';

  @override
  State<SalesEngineerDetailsView> createState() =>
      _SalesEngineerDetailsViewState();
}

class _SalesEngineerDetailsViewState extends State<SalesEngineerDetailsView> {
  final TextEditingController _notesController = TextEditingController(
    text: 'المندوب متعاون ويهتم بجودة المنتجات الزراعية.',
  );

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _appendNote(String noteText) {
    {
      setState(() {
        if (_notesController.text.trim().isNotEmpty) {
          _notesController.text += '\n$noteText';
        } else {
          _notesController.text = noteText;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return CustomScaffold(
        appBar: AppBar(
          title: const Text('تفاصيل هندسة المبيعات'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            tooltip: 'رجوع',
          ),
        ),
        body: BlocBuilder<SalesEngineersBloc, SalesEngineersState>(
          bloc: getIt<SalesEngineersBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (st) {
                return SizedBox();
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        ),
      );
    }
  }
}
