import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/complaints_bloc.dart';
import 'widgets/complaint_dialog.dart';
import 'widgets/complaints_list_widget.dart';

class ComplaintsScreen extends StatelessWidget {
  static const String routeName = '/complaints';

  const ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<ComplaintsBloc>()..add(const ComplaintsEvent.started());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('الشكاوى', style: Theme.of(context).textTheme.titleLarge),
        ),
        body: BlocBuilder<ComplaintsBloc, ComplaintsState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
              loaded: (complaints) {
                return ComplaintsListWidget(complaints: complaints);
              },
              failure: (message) {
                return Center(
                  child: Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final complaintsBloc = BlocProvider.of<ComplaintsBloc>(context);
            showDialog(
              context: context,
              builder: (dialogContext) {
                return BlocProvider.value(
                  value: complaintsBloc,
                  child: const ComplaintDialog(),
                );
              },
            );
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Icon(
            LucideIcons.plus,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
