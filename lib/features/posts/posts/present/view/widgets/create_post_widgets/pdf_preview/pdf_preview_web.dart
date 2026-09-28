import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class PdfPreviewWeb extends StatelessWidget {
  final String pdfUrl;
  const PdfPreviewWeb({
    Key? key,
    required this.pdfUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewId = 'simple-pdf-preview-${pdfUrl.hashCode}';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewId,
      (int viewId) {
        final iframe = html.IFrameElement()
          ..src =
              'https://drive.google.com/viewerng/viewer?embedded=true&url=${Uri.encodeFull(pdfUrl)}.pdf'
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '300px'
          ..style.overflow = 'hidden';

        return iframe;
      },
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 300,
        child: HtmlElementView(
          viewType: viewId,
        ),
      ),
    );
  }
}
