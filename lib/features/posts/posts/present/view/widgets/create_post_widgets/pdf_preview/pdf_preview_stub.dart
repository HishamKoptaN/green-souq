import 'package:flutter/material.dart';
import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_text_styles.dart';

class PdfPreviewStub extends StatelessWidget {
  final String? pdfUrl;
  const PdfPreviewStub({super.key, required this.pdfUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (pdfUrl != null && pdfUrl!.isNotEmpty) {}
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.darkGreyColor),
        ),
        child: Row(
          children: [
            const Icon(Icons.picture_as_pdf, color: Colors.red, size: 40),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "ملف PDF مرفق",
                style: TextStyles.medium14.copyWith(
                  color: AppColors.darkGreyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
