/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_left_ic.svg
  SvgGenImage get arrowLeftIc =>
      const SvgGenImage('assets/icons/arrow_left_ic.svg');

  /// File path: assets/icons/arrow_right_ic.svg
  SvgGenImage get arrowRightIc =>
      const SvgGenImage('assets/icons/arrow_right_ic.svg');

  /// File path: assets/icons/black_play_ic.svg
  SvgGenImage get blackPlayIc =>
      const SvgGenImage('assets/icons/black_play_ic.svg');

  /// File path: assets/icons/category_ic.svg
  SvgGenImage get categoryIc =>
      const SvgGenImage('assets/icons/category_ic.svg');

  /// File path: assets/icons/done_ic.svg
  SvgGenImage get doneIc => const SvgGenImage('assets/icons/done_ic.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/edit_ic.svg
  SvgGenImage get editIc => const SvgGenImage('assets/icons/edit_ic.svg');

  /// File path: assets/icons/fullscreen_exit_ic.svg
  SvgGenImage get fullscreenExitIc =>
      const SvgGenImage('assets/icons/fullscreen_exit_ic.svg');

  /// File path: assets/icons/home_ic.svg
  SvgGenImage get homeIc => const SvgGenImage('assets/icons/home_ic.svg');

  /// File path: assets/icons/no_internet_connection.json
  String get noInternetConnection => 'assets/icons/no_internet_connection.json';

  /// File path: assets/icons/phone_verification.json
  String get phoneVerification => 'assets/icons/phone_verification.json';

  /// File path: assets/icons/profile_ic.svg
  SvgGenImage get profileIc => const SvgGenImage('assets/icons/profile_ic.svg');

  /// File path: assets/icons/red_play_button.svg
  SvgGenImage get redPlayButton =>
      const SvgGenImage('assets/icons/red_play_button.svg');

  /// File path: assets/icons/restart_ic.svg
  SvgGenImage get restartIc => const SvgGenImage('assets/icons/restart_ic.svg');

  /// File path: assets/icons/rotate_left_ic.svg
  SvgGenImage get rotateLeftIc =>
      const SvgGenImage('assets/icons/rotate_left_ic.svg');

  /// File path: assets/icons/save_filled_ic.svg
  SvgGenImage get saveFilledIc =>
      const SvgGenImage('assets/icons/save_filled_ic.svg');

  /// File path: assets/icons/search_ic.svg
  SvgGenImage get searchIc => const SvgGenImage('assets/icons/search_ic.svg');

  /// File path: assets/icons/share_filled_ic.svg
  SvgGenImage get shareFilledIc =>
      const SvgGenImage('assets/icons/share_filled_ic.svg');

  /// File path: assets/icons/sign_up.json
  String get signUp => 'assets/icons/sign_up.json';

  /// File path: assets/icons/skip_back_ic.svg
  SvgGenImage get skipBackIc =>
      const SvgGenImage('assets/icons/skip_back_ic.svg');

  /// File path: assets/icons/triple_dot_ic.svg
  SvgGenImage get tripleDotIc =>
      const SvgGenImage('assets/icons/triple_dot_ic.svg');

  /// File path: assets/icons/user.json
  String get user => 'assets/icons/user.json';

  /// File path: assets/icons/white_play_button_ic.svg
  SvgGenImage get whitePlayButtonIc =>
      const SvgGenImage('assets/icons/white_play_button_ic.svg');

  /// File path: assets/icons/x_ic.svg
  SvgGenImage get xIc => const SvgGenImage('assets/icons/x_ic.svg');

  /// List of all assets
  List<dynamic> get values => [
        arrowLeftIc,
        arrowRightIc,
        blackPlayIc,
        categoryIc,
        doneIc,
        edit,
        editIc,
        fullscreenExitIc,
        homeIc,
        noInternetConnection,
        phoneVerification,
        profileIc,
        redPlayButton,
        restartIc,
        rotateLeftIc,
        saveFilledIc,
        searchIc,
        shareFilledIc,
        signUp,
        skipBackIc,
        tripleDotIc,
        user,
        whitePlayButtonIc,
        xIc
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background_placeholder.png
  AssetGenImage get backgroundPlaceholder =>
      const AssetGenImage('assets/images/background_placeholder.png');

  /// List of all assets
  List<AssetGenImage> get values => [backgroundPlaceholder];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

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
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
