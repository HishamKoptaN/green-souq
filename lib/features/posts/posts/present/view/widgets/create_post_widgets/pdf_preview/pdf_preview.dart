export 'pdf_preview_stub.dart'
    if (dart.library.html) 'pdf_preview_web.dart';

import 'package:flutter/material.dart';

class PdfPreview extends StatelessWidget {
  final String pdfUrl;

  const PdfPreview({
    Key? key,
    required this.pdfUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PdfPreview(pdfUrl: pdfUrl);
  }
}
