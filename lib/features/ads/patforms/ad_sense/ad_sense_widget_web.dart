import 'dart:html' as html;
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';

class AdSenseWidget extends StatefulWidget {
  final String adClient;
  final String adSlot;
  final double width;
  final double height;

  const AdSenseWidget({
    super.key,
    required this.adClient,
    required this.adSlot,
    this.width = 320,
    this.height = 100,
  });

  @override
  State<AdSenseWidget> createState() => _AdSenseWidgetState();
}

class _AdSenseWidgetState extends State<AdSenseWidget> {
  late String _viewTypeId;

  @override
  void initState() {
    super.initState();
    _viewTypeId =
        'adsense-view-${widget.adSlot}-${DateTime.now().millisecondsSinceEpoch}';
    ui.platformViewRegistry.registerViewFactory(_viewTypeId, (int viewId) {
      final adElement = html.Element.tag('ins')
        ..className = 'adsbygoogle'
        ..style.display = 'block'
        ..style.width = '${widget.width}px'
        ..style.height = '${widget.height}px'
        ..setAttribute('data-ad-client', widget.adClient)
        ..setAttribute('data-ad-slot', widget.adSlot);

      final scriptElement = html.ScriptElement()
        ..innerHtml = '(adsbygoogle = window.adsbygoogle || []).push({});';

      final container = html.DivElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..children = [adElement, scriptElement];

      return container;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: HtmlElementView(viewType: _viewTypeId),
    );
  }
}
