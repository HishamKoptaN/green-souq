// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/base_cart.svg
  String get baseCart => 'assets/icons/base_cart.svg';

  /// File path: assets/icons/cart.svg
  String get cart => 'assets/icons/cart.svg';

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/iconoir_add-media-video.png
  AssetGenImage get iconoirAddMediaVideo =>
      const AssetGenImage('assets/icons/iconoir_add-media-video.png');

  /// File path: assets/icons/iconoir_language.svg
  String get iconoirLanguage => 'assets/icons/iconoir_language.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/pdf.svg
  String get pdf => 'assets/icons/pdf.svg';

  /// File path: assets/icons/video.svg
  String get video => 'assets/icons/video.svg';

  /// List of all assets
  List<dynamic> get values => [
    baseCart,
    cart,
    google,
    iconoirAddMediaVideo,
    iconoirLanguage,
    menu,
    pdf,
    video,
  ];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/full_logo.png
  AssetGenImage get fullLogo =>
      const AssetGenImage('assets/logos/full_logo.png');

  /// File path: assets/logos/launcher_icon.png
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/logos/launcher_icon.png');

  /// File path: assets/logos/logo_solid.png
  AssetGenImage get logoSolid =>
      const AssetGenImage('assets/logos/logo_solid.png');

  /// List of all assets
  List<AssetGenImage> get values => [fullLogo, launcherIcon, logoSolid];
}

abstract final class Assets {
  static const AssetGenImage
  aCleanProfessionalFeatureGraphicBannerForGooglePlayStoreForAModern =
      AssetGenImage(
        'assets/a_clean_professional_feature_graphic_banner_for_google_play_store_for_a_modern.png',
      );
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const AssetGenImage screenshot = AssetGenImage(
    'assets/screenshot.png',
  );
  static const AssetGenImage screenshot1 = AssetGenImage(
    'assets/screenshot1.png',
  );
  static const AssetGenImage screenshot2 = AssetGenImage(
    'assets/screenshot2.png',
  );
  static const String stitchGreenSouq = 'assets/stitch_green_souq.zip';
  static const String shorebird = 'shorebird.yaml';

  /// List of all assets
  static List<dynamic> get values => [
    aCleanProfessionalFeatureGraphicBannerForGooglePlayStoreForAModern,
    screenshot,
    screenshot1,
    screenshot2,
    stitchGreenSouq,
    shorebird,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
