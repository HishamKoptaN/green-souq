import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/legal_bloc.dart';
import '../bloc/legal_event.dart';
import '../bloc/legal_state.dart';

class LegalScreen extends StatelessWidget {
  const LegalScreen({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            type.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: BlocBuilder<LegalBloc, LegalState>(
          builder: (context, state) {
            {
              return state.when(
                initial: () {
                  {
                    return const SizedBox.shrink();
                  }
                },
                loading: () {
                  {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    );
                  }
                },
                loaded: (entity) {
                  {
                    return SingleChildScrollView(
                      padding: .all(16.r),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            entity.title,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            entity.content,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    );
                  }
                },
                error: (message) {
                  {
                    return Center(
                      child: Text(
                        message,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                      ),
                    );
                  }
                },
              );
            }
          },
        ),
      );
    }
  }
}
