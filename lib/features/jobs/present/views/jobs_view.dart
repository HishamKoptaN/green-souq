import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/jobs_bloc.dart';

class JobsView extends StatefulWidget {
  static const String routeName = 'jobs';

  const JobsView({super.key});

  @override
  State<JobsView> createState() => _JobsViewState();
}

class _JobsViewState extends State<JobsView> {
  final JobsBloc _bloc = getIt<JobsBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const JobsEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TrText('الوظائف')),
      body: BlocBuilder<JobsBloc, JobsState>(
        bloc: _bloc,
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (jobs) {
              if (jobs.isEmpty) {
                return CustomEmptyWidget(
                  icon: Icon(
                    Icons.work_off_outlined,
                    size: 48.r,
                    color: context.colorScheme.primary,
                  ),
                  title: 'لا توجد وظائف',
                  subtitle: 'ستظهر الفرص المتاحة هنا عند توفرها',
                );
              }
              return RefreshIndicator(
                onRefresh: () async => _bloc.add(const JobsEvent.fetch()),
                child: ListView.separated(
                  itemCount: jobs.length,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final job = jobs[index];
                    return ListTile(
                      title: TrText(job.title),
                      subtitle: Column(
                        crossAxisAlignment: .start,
                        children: [
                          TrText(job.companyName),
                          TrText(
                            job.location,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
            error: (message) {
              return CustomErrorWidget(
                message: message,
                onRetry: () => _bloc.add(const JobsEvent.fetch()),
              );
            },
            orElse: () => const Center(child: CustomCircularProgress()),
          );
        },
      ),
    );
  }
}
