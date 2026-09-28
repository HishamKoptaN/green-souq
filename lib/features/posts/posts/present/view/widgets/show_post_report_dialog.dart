import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/core/widgets/custom_button.dart';
import 'package:green/core/widgets/custom_divider.dart';

import 'report_item.dart';

void showPostReportDialog({required BuildContext context, required int? id}) {
  String selectedReason = "";
  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            content: IntrinsicHeight(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text("إبلاغ"),
                        const Spacer(),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon1.svg",
                      title: "المحتوى غير لائق",
                      value: "inappropriate",
                      groupValue: selectedReason,
                      onChanged: (val) => setState(() => selectedReason = val!),
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon2.svg",
                      title: "معلومات مضللة او خاطئة",
                      value: "false_info",
                      groupValue: selectedReason,
                      onChanged: (val) => setState(() => selectedReason = val!),
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon3.svg",
                      title: "منشور مزعج",
                      value: "spam",
                      groupValue: selectedReason,
                      onChanged: (val) => setState(() => selectedReason = val!),
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon4.svg",
                      title: "سرقة محتوى",
                      value: "stealing",
                      groupValue: selectedReason,
                      onChanged: (val) => setState(() => selectedReason = val!),
                    ),
                    const CustomDivider(),
                    ReportItem(
                      pathIcon: "assets/images/report_icon5.svg",
                      title: "غير ذلك",
                      value: "other",
                      groupValue: selectedReason,
                      onChanged: (val) => setState(() => selectedReason = val!),
                    ),
                    const CustomDivider(),
                    const SizedBox(height: 16),
                    CustomButton(
                      onPressed: () {
                        if (selectedReason.isNotEmpty) {
                          //context.read<ReportBloc>().add(
                          //  ReportEvent.report(
                          //    reportReq: ReportReq(
                          //      id: id ?? 0,
                          //      type: "post",
                          //      reason: selectedReason,
                          //    ),
                          //  ),
                          //);
                        }
                        Navigator.pop(context);
                      },
                      text: "إرسال الإبلاغ",
                      //backgroundColor: const Color(0xffD92D20),
                      //width: 178,
                    ),
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
