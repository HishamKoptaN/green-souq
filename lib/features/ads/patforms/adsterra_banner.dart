import 'dart:html' as html;
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';

class AdsterraBannerWidget extends StatefulWidget {
  final String adKey;
  final int width;
  final int height;

  const AdsterraBannerWidget({
    super.key,
    required this.adKey,
    this.width = 728,
    this.height = 90,
  });

  @override
  State<AdsterraBannerWidget> createState() => _AdsterraBannerWidgetState();
}

class _AdsterraBannerWidgetState extends State<AdsterraBannerWidget> {
  late String _viewId;

  @override
  void initState() {
    super.initState();
    _viewId = 'adsterra-banner-${DateTime.now().millisecondsSinceEpoch}';

    ui.platformViewRegistry.registerViewFactory(_viewId, (int viewId) {
      final iframe = html.IFrameElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.border = 'none'
        ..srcdoc =
            '''
          <!DOCTYPE html>
          <html>
            <head>
              <style>
                body { margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; background: transparent; }
              </style>
            </head>
            <body>
              <script type="text/javascript">
                atOptions = {
                  'key' : '${widget.adKey}',
                  'format' : 'iframe',
                  'height' : ${widget.height},
                  'width' : ${widget.width},
                  'params' : {}
                };
              </script>
              <script type="text/javascript" src="//www.highperformanceformat.com/${widget.adKey}/invoke.js"></script>
            </body>
          </html>
        ''';

      return iframe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width.toDouble(),
        height: widget.height.toDouble(),
        child: HtmlElementView(viewType: _viewId),
      ),
    );
  }
}
