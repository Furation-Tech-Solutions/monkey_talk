import 'package:flutter/material.dart';

import 'colors.dart';
import 'text.dart';

AppStyle $styles = AppStyle();

// @immutable
class AppStyle {
  AppStyle({Size? appSize}) {
    /// Measure the diagonal size of the app window, and slightly adjust the scale value which is
    /// applied to paddings and font-sizes across the app.
    if (appSize == null) {
      scale = 1;
      return;
    }
    // final width = appSize.width;
    // final height = appSize.height;
    // final screenSize = (appSize.width + appSize.height) / 2;
    // final width = appSize.width;
    // final height = appSize.height;
    // final screenSize = (appSize.width + appSize.height) / 2;
    // if (screenSize > 1499) {
    scale = 1; //more than or of figma size 1920+1080
    // }
    // else if (screenSize > 1259) {
    //   scale = .9; //desktop 1440+1080
    // } else if (screenSize > 1006) {
    //   scale = .825; //desktop 1366+649
    // } else if (screenSize > 999) {
    //   scale = .775; //ipad air
    // } else if (screenSize > 895) {
    //   scale = .75; //ipad mini
    // } else {
    //   scale = .7; //mobiles
    // }

    // debugPrint(
    //     'width=$width, height=$height, screenSize=$screenSize, scale=$scale');
  }

  late final double scale;

  /// The current theme colors for the app
  final AppColors colors = AppColors();

  /// Text styles
  late final Texts text = Texts(scale);
}
