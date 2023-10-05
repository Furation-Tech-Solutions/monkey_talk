import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'stylekit.dart';

class Texts {
  Texts(this._scale);
  final double _scale;

  final TextStyle lato = GoogleFonts.lato();
  final TextStyle poppins = GoogleFonts.poppins();
  // final TextStyle inter = GoogleFonts.inter();

// POPPINS

//// 12
  late final TextStyle poppins12_400tertiary400 = _createFont(poppins,
      sizePx: 12, weight: FontWeight.w400, color: $styles.colors.tertiary400);

  late final TextStyle poppins12_400tertiary900 = _createFont(poppins,
      sizePx: 12, weight: FontWeight.w400, color: $styles.colors.tertiary900);

  late final TextStyle poppins12_500primary200 = _createFont(poppins,
      sizePx: 12, weight: FontWeight.w500, color: $styles.colors.primary200);

//// 14
  late final TextStyle poppins14_400tertiary900 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w400, color: $styles.colors.tertiary900);

  late final TextStyle poppins14_500tertiary900 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w500, color: $styles.colors.tertiary900);

  late final TextStyle poppins14_400tertiary400 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w400, color: $styles.colors.tertiary400);

  late final TextStyle lato14_400grey5 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey5);

  late final TextStyle poppins14_500white = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w500, color: $styles.colors.white);

  late final TextStyle poppins14_500black = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w500, color: $styles.colors.black);

  late final TextStyle poppins14_500primary200 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w500, color: $styles.colors.primary200);

  late final TextStyle poppins14_600tertiary600 = _createFont(poppins,
      sizePx: 14, weight: FontWeight.w600, color: $styles.colors.tertiary600);

// 16
  late final TextStyle poppins16_700primary200 = _createFont(poppins,
      sizePx: 16, weight: FontWeight.w700, color: $styles.colors.primary200);

  late final TextStyle poppins16_500tertiary900 = _createFont(poppins,
      sizePx: 16, weight: FontWeight.w500, color: $styles.colors.tertiary900);
// 20
  late final TextStyle poppins20_500black = _createFont(poppins,
      sizePx: 20, weight: FontWeight.w500, color: $styles.colors.black);

  late final TextStyle poppins20_500tertiary900 = _createFont(poppins,
      sizePx: 20, weight: FontWeight.w500, color: $styles.colors.tertiary900);

  //LATO
  late final TextStyle lato14_400tertiary600 = _createFont(lato,
      sizePx: 14, weight: FontWeight.w400, color: $styles.colors.tertiary600);

  

  TextStyle _createFont(TextStyle style,
      {required double sizePx,
      double? heightPx,
      double? spacingPc,
      FontWeight? weight,
      Color? color}) {
    double szpx = sizePx;
    szpx *= _scale;
    double? hpx;
    if (heightPx != null) {
      hpx = heightPx * _scale;
    }
    return style.copyWith(
      fontSize: szpx,
      height: heightPx != null ? (hpx! / sizePx) : style.height,
      letterSpacing:
          spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing,
      fontWeight: weight,
      color: color,
    );
  }
}
