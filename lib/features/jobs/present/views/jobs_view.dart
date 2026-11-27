import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/feedback/custom_empty_widget.dart';
import 'package:green/core/widgets/feedback/custom_error_widg.dart';
import 'package:green/core/widgets/forms/translated_text.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/jobs/present/bloc/jobs_bloc.dart';
import 'package:green/features/jobs/present/views/widgets/job_tile.dart';

/// شاشة الوظائف: عرض من API مع بحث وتحميل المزيد.
class JobsView extends StatefulWidget {
  static const String routeName = 'jobs';

  const JobsView({super.key});

  @override
  State<JobsView> createState() => _JobsViewState();
}

class _JobsViewState extends State<JobsView> {
  final JobsBloc _bloc = getIt<JobsBloc>();
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _bloc.add(const JobsEvent.fetch());
  }

  void _onScroll() {
    if (_controller.position.extentAfter > 200) {
      return;
    }
    _bloc.state.maybeWhen(
      loaded: (jobs, hasNextPage, page) {
        if (hasNextPage) {
          _bloc.add(JobsEvent.fetch(page: page + 1, append: true));
        }
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TrText('الوظائف')),
      body: Column(
        children: [
          Padding(
            padding: .all(12.r),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'ابحث عن وظيفة أو شركة',
                prefixIcon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 16),
              ),
              onChanged: (value) {
                _bloc.add(JobsEvent.fetch(query: value.trim()));
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<JobsBloc, JobsState>(
              bloc: _bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (jobs, hasNextPage, page) {
                    if (jobs.isEmpty) {
                      return const CustomEmptyWidget(
                        icon: Icon(Icons.work_off_outlined),
                        title: 'لا توجد وظائف',
                        subtitle: 'ستظهر الفرص المتاحة هنا عند توفرها',
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () async {
                        _bloc.add(const JobsEvent.fetch());
                      },
                      child: ListView.separated(
                        controller: _controller,
                        itemCount: jobs.length + (hasNextPage ? 1 : 0),
                        separatorBuilder: (context, index) => const Divider(height: 1),
                        itemBuilder: (context, index) {
                          if (index >= jobs.length) {
                            return const Center(child: CustomCircularProgress());
                          }
                          return JobTile(job: jobs[index]);
                        },
                      ),
                    );
                  },
                  error: (message) {
                    return CustomErrorWidget(
                      message: message,
                      onRetry: () {
                        _bloc.add(const JobsEvent.fetch());
                      },
                    );
                  },
                  orElse: () => const Center(child: CustomCircularProgress()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
