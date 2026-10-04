import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/widgets/custom_divider.dart';

import 'report_item.dart';

void showPostReportDialog({required BuildContext context, required int? id}) {
  String selectedReason = "";
  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          final cs = Theme.of(context).colorScheme;
          final tt = Theme.of(context).textTheme;
          return AlertDialog(
            content: IntrinsicHeight(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "إبلاغ",
                          style: tt.titleLarge?.copyWith(color: cs.onSurface),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            return Navigator.pop(context);
                          },
                          icon: Icon(Icons.close, size: 24.r),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon1.svg",
                      title: "المحتوى غير لائق",
                      value: "inappropriate",
                      groupValue: selectedReason,
                      onChanged: (val) {
                        return setState(() {
                          selectedReason = val!;
                        });
                      },
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon2.svg",
                      title: "معلومات مضللة او خاطئة",
                      value: "false_info",
                      groupValue: selectedReason,
                      onChanged: (val) {
                        return setState(() {
                          selectedReason = val!;
                        });
                      },
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon3.svg",
                      title: "منشور مزعج",
                      value: "spam",
                      groupValue: selectedReason,
                      onChanged: (val) {
                        return setState(() {
                          selectedReason = val!;
                        });
                      },
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon4.svg",
                      title: "سرقة محتوى",
                      value: "stealing",
                      groupValue: selectedReason,
                      onChanged: (val) {
                        return setState(() {
                          selectedReason = val!;
                        });
                      },
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon5.svg",
                      title: "غير ذلك",
                      value: "other",
                      groupValue: selectedReason,
                      onChanged: (val) {
                        return setState(() {
                          selectedReason = val!;
                        });
                      },
                    ),
                    const CustomDivider(),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
