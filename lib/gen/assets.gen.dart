/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsCropsGen {
  const $AssetsCropsGen();

  /// File path: assets/crops/carrot.png
  AssetGenImage get carrot => const AssetGenImage('assets/crops/carrot.png');

  /// File path: assets/crops/cotton.png
  AssetGenImage get cotton => const AssetGenImage('assets/crops/cotton.png');

  /// File path: assets/crops/grapes.png
  AssetGenImage get grapes => const AssetGenImage('assets/crops/grapes.png');

  /// File path: assets/crops/maize.png
  AssetGenImage get maize => const AssetGenImage('assets/crops/maize.png');

  /// File path: assets/crops/potato.png
  AssetGenImage get potato => const AssetGenImage('assets/crops/potato.png');

  /// File path: assets/crops/rice.png
  AssetGenImage get rice => const AssetGenImage('assets/crops/rice.png');

  /// File path: assets/crops/sugarcane.png
  AssetGenImage get sugarcane =>
      const AssetGenImage('assets/crops/sugarcane.png');

  /// File path: assets/crops/tomato.png
  AssetGenImage get tomato => const AssetGenImage('assets/crops/tomato.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [carrot, cotton, grapes, maize, potato, rice, sugarcane, tomato];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/app_logo.svg
  SvgGenImage get appLogo => const SvgGenImage('assets/svgs/app_logo.svg');

  /// File path: assets/svgs/error.svg
  SvgGenImage get error => const SvgGenImage('assets/svgs/error.svg');

  /// File path: assets/svgs/plants.svg
  SvgGenImage get plants => const SvgGenImage('assets/svgs/plants.svg');

  /// List of all assets
  List<SvgGenImage> get values => [appLogo, error, plants];
}

class Assets {
  Assets._();

  static const $AssetsCropsGen crops = $AssetsCropsGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
