import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/suggestion_entity.dart';

class SuggestionsListWidget extends StatelessWidget {
  final List<SuggestionEntity> suggestions;

  const SuggestionsListWidget({
    super.key,
    required this.suggestions,
  });

  @override
  Widget build(BuildContext context) {
    if (suggestions.isEmpty) {
      return Center(
        child: Text(
          'No suggestions yet',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.r),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return Card(
          margin: EdgeInsets.only(bottom: 12.h),
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suggestion.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 8.h),
                Text(
                  suggestion.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
