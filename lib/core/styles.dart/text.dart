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

  //lato
  late final TextStyle lato14_400tertiary600 = _createFont(lato,
      sizePx: 14, weight: FontWeight.w400, color: $styles.colors.tertiary600);

  // late final TextStyle lato12_400Grey6 = _createFont(
  //   lato,
  //   sizePx: 12,
  //   weight: FontWeight.w400,
  //   color: $styles.colors.grey6,
  // );
  // late final TextStyle lato12_400Grey6 = _createFont(lato,
  //     sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey6);
  // late final TextStyle lato12_400Grey6 = _createFont(lato,
  //     sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey6);
  // late final TextStyle lato12_400Grey6 = _createFont(
  //   lato,
  //   sizePx: 12,
  //   weight: FontWeight.w400,
  //   color: $styles.colors.grey6,
  // );
  // late final TextStyle lato12_400Grey6 = _createFont(lato,
  //     sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey6);
  // late final TextStyle lato12_400Grey6 = _createFont(
  //   lato,
  //   sizePx: 12,
  //   weight: FontWeight.w400,
  //   color: $styles.colors.grey6,
  // );
//   late final TextStyle lato12_500grey8 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey8);

//   late final TextStyle lato12_400Grey7 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey7);

//   late final TextStyle lato12_500grey7 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey7);

//   late final TextStyle lato11_400Grey2 = _createFont(lato,
//       sizePx: 11, weight: FontWeight.w400, color: $styles.colors.grey2);

//   late final TextStyle lato12_400violet3 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w400, color: $styles.colors.violet3);

//   late final TextStyle lato11_400Grey7 = _createFont(lato,
//       sizePx: 11, weight: FontWeight.w400, color: $styles.colors.grey7);

//   late final TextStyle lato24_600Grey1 = _createFont(lato,
//       sizePx: 24, weight: FontWeight.w600, color: $styles.colors.grey1);

//   late final TextStyle lato30_600Grey1 = _createFont(lato,
//       sizePx: 30, weight: FontWeight.w600, color: $styles.colors.grey1);

//   late final TextStyle lato12_600White = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w600, color: $styles.colors.white);
//   late final TextStyle lato12_600Grey8 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w600, color: $styles.colors.grey8);
//   late final TextStyle lato10_400grey10 = _createFont(lato,
//       sizePx: 10, weight: FontWeight.w400, color: $styles.colors.grey10);
//   late final TextStyle lato16_600grey10 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w600, color: $styles.colors.grey10);
//   late final TextStyle inter14_500white = _createFont(inter,
//       sizePx: 14, weight: FontWeight.w500, color: $styles.colors.white);
//   late final TextStyle lato10_600grey8 = _createFont(lato,
//       sizePx: 10, weight: FontWeight.w600, color: $styles.colors.grey8);

//   late final TextStyle lato14_400 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey11);

//   late final TextStyle lato10_600grey1 = _createFont(lato,
//       sizePx: 10, weight: FontWeight.w600, color: $styles.colors.grey1);
//   // late final TextStyle lato12_400 = _createFont(lato,
//   // sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey9);
//   late final TextStyle lato10_400Grey7 = _createFont(
//     lato,
//     sizePx: 10,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey7,
//   );

//   // late final TextStyle lato12_600Grey8 = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w600, color: $styles.colors.grey8);
//   // late final TextStyle lato12_600Grey8 = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w600, color: $styles.colors.grey8);

//   late final TextStyle lato12_400grey7 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey7);

//   late final TextStyle lato17_500violet = _createFont(lato,
//       sizePx: 17, weight: FontWeight.w500, color: $styles.colors.violet2);

//   late final TextStyle lato12_600Grey10 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w600, color: $styles.colors.grey10);
//   late final TextStyle lato10_400Grey6 = _createFont(
//     lato,
//     sizePx: 10,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey6,
//   );

//   // late final TextStyle lato10_400grey8 = _createFont(
//   // late final TextStyle lato10_400grey10 = _createFont(
//   //   lato,
//   //   sizePx: 10,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.grey10,
//   // );
//   // late final TextStyle inter14_500white = _createFont(inter,
//   //     sizePx: 14, weight: FontWeight.w500, color: $styles.colors.white);
//   // late final TextStyle lato10_600grey8 = _createFont(
//   //   lato,
//   //   sizePx: 10,
//   //   weight: FontWeight.w600,
//   //   color: $styles.colors.grey8,
//   // );

//   late final TextStyle lato12_700 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w700, color: $styles.colors.grey11);
//   late final TextStyle lato10_400grey7 = _createFont(
//     lato,
//     sizePx: 10,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey7,
//   );
//   late final TextStyle lato12_500errorRed = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.errorRed);

//   late final TextStyle lato12_500 = _createFont(
//     lato,
//     sizePx: 12,
//     weight: FontWeight.w500,
//     color: $styles.colors.grey10,
//   );

//   late final TextStyle lato10_600grey7 = _createFont(
//     lato,
//     sizePx: 10,
//     weight: FontWeight.w600,
//     color: $styles.colors.grey7,
//   );

//   late final TextStyle lato14_500Grey9 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w500, color: $styles.colors.grey9);
//   // late final TextStyle lato10_600grey7 = _createFont(lato,
//   //     sizePx: 10, weight: FontWeight.w600, color: $styles.colors.grey7);

//   // late final TextStyle lato10_600grey7 = _createFont(lato,
//   //     sizePx: 10, weight: FontWeight.w600, color: $styles.colors.grey7);

//   // late final TextStyle lato12_700 = _createFont(
//   //   lato,
//   //   sizePx: 12,
//   //   weight: FontWeight.w700,
//   //   color: $styles.colors.grey11,
//   // );

//   // late final TextStyle lato10_600grey7 = _createFont(
//   //   lato,
//   //   sizePx: 10,
//   //   weight: FontWeight.w600,
//   //   color: $styles.colors.grey7,
//   // );

//   // late final TextStyle lato14_500Grey9 = _createFont(lato,
//   //     sizePx: 14, weight: FontWeight.w500, color: $styles.colors.grey9);

//   // late final TextStyle lato12_500errorRed = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w500, color: $styles.colors.errorRed);

//   late final TextStyle navSelected = _createFont(
//     lato,
//     sizePx: 14,
//   );

//   late final TextStyle lato12_500grey9 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey9);

//   late final TextStyle lato14_400grey6 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey6);
//   late final TextStyle lato14_700Grey10 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w700,
//     color: $styles.colors.grey10,
//   );
//   late final TextStyle lato18_400Grey3 = _createFont(
//     lato,
//     sizePx: 18,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey3,
//   );
//   late final TextStyle lato12_400Grey8 = _createFont(
//     lato,
//     sizePx: 12,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey8,
//   );

//   late final TextStyle lato12_400voilet3 = _createFont(
//     lato,
//     sizePx: 12,
//     weight: FontWeight.w400,
//     color: $styles.colors.violet3,
//   );
//   // late final TextStyle lato12_400voilet3 = _createFont(
//   //   lato,
//   //   sizePx: 12,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.voilet3,
//   // );
//   late final TextStyle lato11_400grey10 = _createFont(
//     lato,
//     sizePx: 11,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey10,
//   );
//   late final TextStyle lato12_400Grey2 = _createFont(
//     lato,
//     sizePx: 12,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey2,
//   );

//   late final TextStyle lato14_500Grey8 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w500,
//     color: $styles.colors.grey8,
//   );
//   late final TextStyle lato11_400grey7 = _createFont(
//     lato,
//     sizePx: 11,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey7,
//   );
//   late final TextStyle lato14_400grey7 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey7,
//   );
//   late final TextStyle lato14_500grey9 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w500,
//     color: $styles.colors.grey9,
//   );
//   late final TextStyle lato14_400Grey7 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey7,
//   );
//   late final TextStyle lato14_400Grey10 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey10,
//   );
//   late final TextStyle lato16_600White = _createFont(
//     lato,
//     sizePx: 16,
//     weight: FontWeight.w600,
//     color: $styles.colors.white,
//   );
//   late final TextStyle lato16_600Grey9 = _createFont(
//     lato,
//     sizePx: 16,
//     weight: FontWeight.w600,
//     color: $styles.colors.grey9,
//   );

//   late final TextStyle lato10_700Black = _createFont(lato,
//       sizePx: 10, weight: FontWeight.w700, color: $styles.colors.black);
//   late final TextStyle lato16_600Grey1 = _createFont(
//     lato,
//     sizePx: 16,
//     weight: FontWeight.w600,
//     color: $styles.colors.grey1,
//   );
//   // late final TextStyle lato10_700Black = _createFont(lato,
//   //     sizePx: 10, weight: FontWeight.w700, color: $styles.colors.black);
//   // late final TextStyle lato12_500grey9 = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey9);

//   late final TextStyle lato12_500Grey10 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey10);

//   late final TextStyle lato12_700Black = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w700, color: $styles.colors.black);

//   // late final TextStyle lato12_400grey7 = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey7);
//   // late final TextStyle lato14_400grey6 = _createFont(lato,
//   //     sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey6);

//   late final TextStyle lato14_400Grey8 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey8);

//   late final TextStyle lato14_400Grey6 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w400, color: $styles.colors.grey6);

//   late final TextStyle lato16_600grey9 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w600, color: $styles.colors.grey9);
//   late final TextStyle lato18_600grey10 = _createFont(lato,
//       sizePx: 18, weight: FontWeight.w600, color: $styles.colors.grey10);
//   late final TextStyle lato18_700grey8 = _createFont(lato,
//       sizePx: 18, weight: FontWeight.w700, color: $styles.colors.grey8);

//   // late final TextStyle lato16_600grey10 = _createFont(lato,
//   //     sizePx: 16, weight: FontWeight.w600, color: $styles.colors.grey10);

//   late final TextStyle lato14_500violet = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w500, color: $styles.colors.violet1);

//   late final TextStyle lato16_500grey8 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w500, color: $styles.colors.grey8);

//   late final TextStyle lato16_400violet = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w400, color: $styles.colors.violet1);

//   late final TextStyle lato16_700Grey10 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w400, color: $styles.colors.grey10);
//   late final TextStyle lato16_600Grey10 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w600, color: $styles.colors.grey10);
//   // late final TextStyle lato16_500White = _createFont(lato,
//   //     sizePx: 16, weight: FontWeight.w500, color: $styles.colors.white);

//   late final TextStyle navHead = _createFont(lato,
//       sizePx: 25, weight: FontWeight.w700, color: $styles.colors.white);

//   // late final TextStyle lato14_400 = _createFont(lato,
//   //     sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey11);

//   late final TextStyle lato14_400grey10 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w400, color: $styles.colors.grey10);

//   late final TextStyle lato14_500 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w500, color: $styles.colors.grey11);
//   late final TextStyle lato20_400lb = _createFont(
//     lato,
//     sizePx: 20,
//     weight: FontWeight.w400,
//     color: $styles.colors.lavenderBlue,
//   );

//   late final TextStyle lato14_500Black = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w500, color: $styles.colors.black);

//   late final TextStyle lato14_600 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w600, color: $styles.colors.grey11);

//   late final TextStyle lato20_600 = _createFont(
//     lato,
//     sizePx: 20,
//     weight: FontWeight.w600,
//     color: $styles.colors.grey11,
//   );

//   late final TextStyle lato14_600Grey11 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w600, color: $styles.colors.grey11);

//   late final TextStyle lato14_700 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w700, color: $styles.colors.grey9);

//   late final TextStyle lato14_700White = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w700, color: $styles.colors.white);

//   late final TextStyle lato14_700Bold = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w700, color: $styles.colors.grey11);
//   late final TextStyle lato12_700Grey8 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w700, color: $styles.colors.grey8);

//   late final TextStyle lato19_500Bold = _createFont(lato,
//       sizePx: 19, weight: FontWeight.w500, color: $styles.colors.black);

//   late final TextStyle lato16_400 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w400, color: $styles.colors.grey9);

//   late final TextStyle lato16_400Grey6 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w400, color: $styles.colors.grey6);

//   late final TextStyle lato16_500 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w500, color: $styles.colors.grey10);

//   late final TextStyle lato16_500White = _createFont(inter,
//       sizePx: 16, weight: FontWeight.w500, color: $styles.colors.white);

//   late final TextStyle lato16_500Grey8 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w500, color: $styles.colors.grey8);

//   late final TextStyle lato16_500Grey10 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w500, color: $styles.colors.grey10);

//   late final TextStyle lato16_600Grey11 = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w600, color: $styles.colors.grey11);

//   late final TextStyle lato16_700white = _createFont(lato,
//       sizePx: 16, weight: FontWeight.w700, color: $styles.colors.white);
//   // late final TextStyle lato12_400Grey6 = _createFont(lato,
//   //     sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey6);
//   late final TextStyle lato12_500Grey8 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w500, color: $styles.colors.grey8);
//   // late final TextStyle lato14_500Grey9 = _createFont(lato,
//   //     sizePx: 14, weight: FontWeight.w500, color: $styles.colors.grey9);

//   // late final TextStyle lato12_500Grey10 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w500,color: $styles.colors.grey10);

//   // late final TextStyle lato14_400Grey8 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w400,color: $styles.colors.grey8);

//   // late final TextStyle lato16_700Grey10 = _createFont(lato,
//   // sizePx: 16,weight: FontWeight.w400,color: $styles.colors.grey10);

//   //  late final TextStyle lato16_600Grey10 = _createFont(lato,
//   // sizePx: 16,weight: FontWeight.w600,color: $styles.colors.grey10);

//   // late final TextStyle lato12_400Grey8 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w400,color: $styles.colors.grey8);

//   // late final TextStyle lato14_400Grey7 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w400,color: $styles.colors.grey7);

//   // late final TextStyle lato16_600Grey1 = _createFont(
//   //   lato,
//   //   sizePx: 16,
//   //   weight: FontWeight.w600,
//   //   color: $styles.colors.grey1,
//   // );

//   //   late final TextStyle lato16_500Grey8 = _createFont(lato,
//   // sizePx: 16,weight: FontWeight.w500,color: $styles.colors.grey8);

//   //  late final TextStyle lato16_400violet = _createFont(lato,
//   // sizePx: 16,weight: FontWeight.w400,color: $styles.colors.voilet1);

//   late final TextStyle lato18_400Green = _createFont(
//     lato,
//     sizePx: 18,
//     weight: FontWeight.w400,
//     color: Colors.green,
//   );
//   late final TextStyle lato16_600Grey4 = _createFont(
//     lato,
//     sizePx: 16,
//     weight: FontWeight.w600,
//     color: $styles.colors.grey4,
//   );
//   //  late final TextStyle lato14_400Grey6 = _createFont(lato,
//   // sizePx: 16,weight: FontWeight.w400,color: $styles.colors.grey6);

//   late final TextStyle lato18_400Grey = _createFont(
//     lato,
//     sizePx: 18,
//     weight: FontWeight.w400,
//     color: $styles.colors.lightGrey,
//   );

//   late final TextStyle lato14_400Grey4 = _createFont(
//     lato,
//     sizePx: 14,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey4,
//   );

//   late final TextStyle lato18_700Grey6 = _createFont(
//     lato,
//     sizePx: 18,
//     color: $styles.colors.grey6,
//     weight: FontWeight.w700,
//   );
//   late final TextStyle lato14_400violet3 = _createFont(lato,
//       sizePx: 14, weight: FontWeight.w400, color: $styles.colors.violet3);

//   //  late final TextStyle lato12_700Grey8 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w700,color: $styles.colors.grey8);

//   // late final TextStyle lato14_400Grey4 = _createFont(
//   //   lato,
//   //   sizePx: 14,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.grey4,
//   // );

//   // late final TextStyle lato18_700Grey6 = _createFont(
//   //   lato,
//   //   sizePx: 18,
//   //   color: $styles.colors.grey6,
//   //   weight: FontWeight.w700,
//   // );

//   // late final TextStyle lato14_400violet3 = _createFont(lato,
//   //     sizePx: 14, weight: FontWeight.w400, color: $styles.colors.violet3);

//   //  late final TextStyle lato12_700Grey8 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w700,color: $styles.colors.grey8);

//   // late final TextStyle lato20_400lp = _createFont(lato,
//   //     sizePx: 20, weight: FontWeight.w400, color: $styles.colors.loginPage);

//   late final TextStyle lato20_700Grey9 = _createFont(lato,
//       sizePx: 20, weight: FontWeight.w700, color: $styles.colors.grey9);
//   late final TextStyle lato20_400Grey13 = _createFont(
//     lato,
//     sizePx: 20,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey13,
//   );

//   // late final TextStyle lato20_400lb = _createFont(
//   //   lato,
//   //   sizePx: 20,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.lavenderBlue,
//   // );

//   //  late final TextStyle lato16_600Grey9 = _createFont(lato,
//   // sizePx: 24,weight: FontWeight.w600,color: $styles.colors.grey9);

//   //  late final TextStyle lato11_400grey10 = _createFont(lato,
//   // sizePx: 11,weight: FontWeight.w600,color: $styles.colors.grey11);

//   // late final TextStyle lato20_600 = _createFont(
//   //   lato,
//   //   sizePx: 20,
//   //   weight: FontWeight.w600,
//   //   color: $styles.colors.grey11,
//   // );

//   // late final TextStyle lato20_700Grey9 = _createFont(
//   //   lato,
//   //   sizePx: 20,
//   //   weight: FontWeight.w700,
//   //   color: $styles.colors.grey9,
//   // );

//   // late final TextStyle lato18_400lp = _createFont(lato,
//   //     sizePx: 18, weight: FontWeight.w400, color: $styles.colors.loginPage);
//   //  late final TextStyle lato10_400grey7 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w400,color: $styles.colors.grey7);
//   // late final TextStyle lato18_400lp = _createFont(lato,
//   //     sizePx: 18, weight: FontWeight.w400, color: $styles.colors.loginPage);

//   //  late final TextStyle lato12_500 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w500);

//   // late final TextStyle lato24_600Grey1 = _createFont(
//   //   lato,
//   //   sizePx: 24,
//   //   weight: FontWeight.w600,
//   //   color: $styles.colors.grey1,
//   // );
//   // late final TextStyle lato14_400Grey4 = _createFont(
//   //   lato,
//   //   sizePx: 14,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.grey4,
//   // );

//   //  late final TextStyle lato10_400grey10 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w400,color: $styles.colors.grey10);

//   //  late final TextStyle lato14_500Grey8 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,color: $styles.colors.grey8);

//   late final TextStyle lato20_700Grey10 = _createFont(lato,
//       sizePx: 20, weight: FontWeight.w700, color: $styles.colors.grey10);

//   //  late final TextStyle lato10_400grey7 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w400,color: $styles.colors.grey7);

//   //  late final TextStyle lato12_500 = _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w500);

//   //  late final TextStyle lato10_400grey10 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w400,color: $styles.colors.grey10);

//   //  late final TextStyle lato14_500Grey8 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,color: $styles.colors.grey8);

//   //  late final TextStyle lato14_500Grey8 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,color: $styles.colors.grey8);

//   //  late final TextStyle lato14_400grey10 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w500,color: $styles.colors.grey10);

//   late final TextStyle lato17_500white = _createFont(lato,
//       sizePx: 17, weight: FontWeight.w500, color: $styles.colors.white);

//   //  late final TextStyle lato16_600grey10 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w600,color: $styles.colors.grey10);

//   //  late final TextStyle lato14_500 = _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,);

//   //  late final TextStyle inter14_500white= _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,color: $styles.colors.white);

//   //  late final TextStyle lato14_500grey9= _createFont(lato,
//   // sizePx: 14,weight: FontWeight.w500,color: $styles.colors.grey9);

//   //  late final TextStyle lato12_500grey9= _createFont(lato,
//   // sizePx: 12,weight: FontWeight.w500,color: $styles.colors.grey9);

//   //  late final TextStyle lato10_600grey7 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w600,color: $styles.colors.grey7);

//   //  late final TextStyle lato10_600grey8 = _createFont(lato,
//   // sizePx: 10,weight: FontWeight.w600,color: $styles.colors.grey8);

//   late final TextStyle lato20_500 = _createFont(
//     lato,
//     sizePx: 20,
//     weight: FontWeight.w600,
//   );

//   late final TextStyle lato12_400Grey10 = _createFont(lato,
//       sizePx: 12, weight: FontWeight.w400, color: $styles.colors.grey10);

// // late final TextStyle lato12_600Grey8 = _createFont(lato,
// //   sizePx: 12,weight: FontWeight.w600,color: $styles.colors.grey8);

// //   late final TextStyle lato14_400Grey10 = _createFont(lato,
// //   sizePx: 14,weight: FontWeight.w400,color: $styles.colors.grey10);

//   late final TextStyle lato10_400Grey2 = _createFont(lato,
//       sizePx: 10, weight: FontWeight.w400, color: $styles.colors.grey2);

//   late final TextStyle loginText = _createFont(lato,
//       sizePx: 27,
//       weight: FontWeight.w700,
//       color: const Color(
//         0Xff2D3648,
//       ));

//   late final TextStyle lato20_800wh = _createFont(
//     lato,
//     sizePx: 25,
//     weight: FontWeight.w800,
//     color: $styles.colors.white,
//   );
//   late final TextStyle lato16_400Grey4 = _createFont(
//     lato,
//     sizePx: 18,
//     weight: FontWeight.w400,
//     color: $styles.colors.grey4,
//   );
//   late final TextStyle lato16_700White = _createFont(
//     lato,
//     sizePx: 16,
//     weight: FontWeight.w700,
//     color: $styles.colors.white,
//   );
//   // late final TextStyle lato20_800wh = _createFont(lato,
//   //     sizePx: 25, weight: FontWeight.w800, color: $styles.colors.white);
//   // late final TextStyle lato16_400Grey4 = _createFont(lato,
//   //     sizePx: 18, weight: FontWeight.w400, color: $styles.colors.grey4);
//   // late final TextStyle lato16_700White = _createFont(lato,
//   //     sizePx: 16, weight: FontWeight.w700, color: $styles.colors.white);
//   // late final TextStyle lato20_800wh = _createFont(lato,
//   //     sizePx: 25, weight: FontWeight.w800, color: $styles.colors.white);
//   // late final TextStyle lato16_400Grey4 = _createFont(lato,
//   //     sizePx: 18, weight: FontWeight.w400, color: $styles.colors.grey4);
//   // late final TextStyle lato16_700White = _createFont(lato,
//   //     sizePx: 16, weight: FontWeight.w700, color: $styles.colors.white);
//   // late final TextStyle lato20_800wh = _createFont(
//   //   lato,
//   //   sizePx: 25,
//   //   weight: FontWeight.w800,
//   //   color: $styles.colors.white,
//   // );
//   // late final TextStyle lato16_400Grey4 = _createFont(
//   //   lato,
//   //   sizePx: 18,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.grey4,
//   // );
//   // late final TextStyle lato16_700White = _createFont(
//   //   lato,
//   //   sizePx: 16,
//   //   weight: FontWeight.w700,
//   //   color: $styles.colors.white,
//   // );
//   // late final TextStyle lato20_800wh = _createFont(lato,
//   //     sizePx: 25, weight: FontWeight.w800, color: $styles.colors.white);
//   // late final TextStyle lato16_400Grey4 = _createFont(lato,
//   //     sizePx: 18, weight: FontWeight.w400, color: $styles.colors.grey4);
//   // late final TextStyle lato16_700White = _createFont(lato,
//   //     sizePx: 16, weight: FontWeight.w700, color: $styles.colors.white);
//   // late final TextStyle lato20_800wh = _createFont(
//   //   lato,
//   //   sizePx: 25,
//   //   weight: FontWeight.w800,
//   //   color: $styles.colors.white,
//   // );
//   // late final TextStyle lato16_400Grey4 = _createFont(
//   //   lato,
//   //   sizePx: 18,
//   //   weight: FontWeight.w400,
//   //   color: $styles.colors.grey4,
//   // );
//   // late final TextStyle lato16_700White = _createFont(
//   //   lato,
//   //   sizePx: 16,
//   //   weight: FontWeight.w700,
//   //   color: $styles.colors.white,
//   // );

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
