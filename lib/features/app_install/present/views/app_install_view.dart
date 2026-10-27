import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/custom_scaffold.dart';
import 'dart:html' as html;
import 'dart:ui_web' as ui;
import 'widgets/features/app_install_features_section.dart';
import 'widgets/guide/app_install_guide_section.dart';
import 'widgets/hero/app_install_hero_section.dart';
import 'widgets/stores/app_install_stores_section.dart';

class AppInstallView extends StatelessWidget {
  const AppInstallView({super.key});

  static const String routeName = 'install';

  @override
  Widget build(BuildContext context) {
    {
      return CustomScaffold(
        scroll: true,
        // backgroundColor: context.colorScheme.onPrimary,
        appBar: AppBar(
          // title: Text(
          //   'تثبيت تطبيق السوق الأخضر',
          //   style: context.textTheme.titleLarge?.copyWith(
          //     color: context.colorScheme.onSurface,
          //     fontWeight: .bold,
          //   ),
          // ),
          centerTitle: true,
          backgroundColor: context.colorScheme.surfaceContainerLowest,
          elevation: 0,
        ),
        body: Column(
          spacing: 16.h,
          children: const [
            AppInstallHeroSection(),
            AppInstallStoresSection(),
            // AppInstallPwaSection(),
            AppInstallGuideSection(),
            AppInstallFeaturesSection(),
            Banner468x60Ad(),
          ],
        ),
      );
    }
  }
}

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
      height: 120, // أو الارتفاع المناسب للوحدة
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: HtmlElementView(viewType: viewType),
    );
  }
}
