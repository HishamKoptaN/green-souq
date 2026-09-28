// import 'dart:html' as html;
// import 'dart:ui_web' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
//   export 'pdf_preview_stub.dart'
//     if (dart.library.html) 'pdf_preview_stub_web.dart';

// class PdfPreview extends StatefulWidget {
//   final String pdfUrl;
//   const PdfPreview({
//     super.key,
//     required this.pdfUrl,
//   });
//   @override
//   State<PdfPreview> createState() => _PdfPreviewState();
// }

// class _PdfPreviewState extends State<PdfPreview> {
//   late final String viewId;

//   @override
//   void initState() {
//     super.initState();
//     viewId = 'simple-pdf-preview-${widget.pdfUrl.hashCode}';
//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//       viewId,
//       (int viewId) {
//         final iframe = html.IFrameElement()
//           ..src =
//               'https://drive.google.com/viewerng/viewer?embedded=true&url=${Uri.encodeFull(widget.pdfUrl)}'
//           ..style.border = 'none'
//           ..style.width = '100%'
//           ..style.height = '300px'
//           ..style.overflow = 'hidden';

//         return iframe;
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!kIsWeb) {
//       return const Text('هذا المعاينة متاحة فقط للويب');
//     }

//     return ClipRRect(
//       borderRadius: BorderRadius.circular(12),
//       child: SizedBox(
//         height: 300, // يظهر فقط الجزء العلوي
//         child: HtmlElementView(viewType: viewId),
//       ),
//     );
//   }
// }
