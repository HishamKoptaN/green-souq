import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../bloc/suggestions_bloc.dart';
import 'widgets/suggestion_dialog.dart';
import 'widgets/suggestions_list_widget.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Suggestions',
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
          showDialog(
            context: context,
            builder: (dialogContext) {
              return const SuggestionDialog();
            },
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          LucideIcons.plus,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
