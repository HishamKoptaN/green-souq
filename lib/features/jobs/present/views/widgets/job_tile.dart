import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/features/jobs/domain/entities/job_entity.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/forms/translated_text.dart';

/// بطاقة وظيفة واحدة في القائمة.
class JobTile extends StatelessWidget {
  const JobTile({super.key, required this.job});

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: TrText(job.title),
      subtitle: Column(
        crossAxisAlignment: .start,
        children: [
          TrText(job.companyName),
          if (job.location.isNotEmpty)
            TrText(
              job.location,
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          if (job.description.isNotEmpty)
            Padding(
              padding: .only(top: 4.h),
              child: TrText(
                job.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
      isThreeLine: true,
      trailing: job.status == 'open'
          ? FaIcon(FontAwesomeIcons.circleCheck, size: 16.sp, color: theme.colorScheme.primary)
          : FaIcon(FontAwesomeIcons.circlePause, size: 16.sp, color: theme.colorScheme.outline),
    );
  }
}
