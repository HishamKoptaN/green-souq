import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/suggestions_bloc.dart';
import '../bloc/suggestions_event.dart';
import '../bloc/suggestions_state.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestions', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: BlocBuilder<SuggestionsBloc, SuggestionsState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              BlocProvider.of<SuggestionsBloc>(context).add(const SuggestionsEvent.fetch());
              return Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.primary));
            },
            loading: () {
              return Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.primary));
            },
            loaded: (suggestions) {
              if (suggestions.isEmpty) {
                return Center(child: Text('No suggestions yet', style: Theme.of(context).textTheme.bodyMedium));
              }
              return ListView.builder(
                padding: .all(16.r),
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = suggestions[index];
                  return Card(
                    margin: .only(bottom: 12.h),
                    color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: .all(16.r),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(suggestion.title, style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(height: 8.h),
                          Text(suggestion.description, style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            error: (message) {
              return Center(child: Text(message, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.error)));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for adding suggestion
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
