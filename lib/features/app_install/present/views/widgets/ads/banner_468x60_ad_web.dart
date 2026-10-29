// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
// ignore: undefined_prefixed_name
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';

class Banner468x60Ad extends StatefulWidget {
  const Banner468x60Ad({super.key});

  @override
  State<Banner468x60Ad> createState() => _Banner468x60AdState();
}

class _Banner468x60AdState extends State<Banner468x60Ad> {
  final String viewType = 'adsterra-banner-468x60';

  @override
  void initState() {
    super.initState();
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      final iframe = html.IFrameElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.border = 'none'
        ..srcdoc = '''
          <script type="text/javascript">
            atOptions = {
              'key': '32090b2fadd530260a873b780b553483',
              'format': 'iframe',
              'height': 60,
              'width': 468,
              'params': {}
            };
          </script>
          <script type="text/javascript" src="https://bancadeltempoidea.org/22/32090b2fadd530260a873b780b553483"></script>
        ''';
      return iframe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 468,
      height: 60,
      child: HtmlElementView(viewType: 'adsterra-banner-468x60'),
    );
  }
}

class AdSenseInFeedWidget extends StatefulWidget {
  final String adSlot;
  final String? layoutKey;

  const AdSenseInFeedWidget({super.key, required this.adSlot, this.layoutKey});

  @override
  State<AdSenseInFeedWidget> createState() => _AdSenseInFeedWidgetState();
}

class _AdSenseInFeedWidgetState extends State<AdSenseInFeedWidget> {
  late String viewType;

  @override
  void initState() {
    super.initState();
    viewType = 'adsense-${widget.adSlot}';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      final element = html.DivElement()
        ..style.width = '100%'
        ..style.height = '100%';
      element.innerHtml =
          '''
        <ins class="adsbygoogle"
             style="display:block"
             data-ad-client="ca-pub-6433776359670248"
             data-ad-slot="${widget.adSlot}"
             ${widget.layoutKey != null ? 'data-ad-layout-key="${widget.layoutKey}"' : ''}
             data-ad-format="fluid"
             data-full-width-responsive="true"></ins>
        <script>
             (adsbygoogle = window.adsbygoogle || []).push({});
        </script>
      ''';
      return element;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: HtmlElementView(viewType: viewType),
    );
  }
}
