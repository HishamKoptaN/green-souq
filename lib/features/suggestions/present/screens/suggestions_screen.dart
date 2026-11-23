import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/suggestions_bloc.dart';
import 'widgets/suggestion_dialog.dart';
import 'widgets/suggestions_list_widget.dart';

class SuggestionsScreen extends StatelessWidget {
  static const String routeName = '/suggestions';

  const SuggestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<SuggestionsBloc>()..add(const SuggestionsEvent.started());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'المقترحات',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: BlocBuilder<SuggestionsBloc, SuggestionsState>(
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
              loaded: (suggestions) {
                return SuggestionsListWidget(suggestions: suggestions);
              },
              failure: (_) {
                return Center(
                  child: Text(
                    'تعذّر تحميل المقترحات. حاول مرة أخرى.',
                    style: Theme.of(context).textTheme.bodyMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: Builder(
          builder: (fabContext) {
            return FloatingActionButton(
              onPressed: () {
                final bloc = BlocProvider.of<SuggestionsBloc>(fabContext);
                showDialog(
                  context: fabContext,
                  builder: (dialogContext) {
                    return BlocProvider.value(
                      value: bloc,
                      child: const SuggestionDialog(),
                    );
                  },
                );
              },
              tooltip: 'إضافة مقترح',
              backgroundColor: Theme.of(fabContext).colorScheme.primary,
              child: Icon(
                LucideIcons.plus,
                color: Theme.of(fabContext).colorScheme.onPrimary,
              ),
            );
          },
        ),
      ),
    );
  }
}
