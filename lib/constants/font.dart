import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';

/// 시스템 디폴트 폰트
const kDefaultFontFamily = "Noto_Sans_KR";

/*
 * 앱 전역으로 사용할 폰트
 */
class NotoSansKr {
// 400 R
// 500 M

  static const black12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 14.4);
  static const black12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 14.4);
  static const black14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 16.8);
  static const black14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 16.8);
  static const black14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 16.8);

  static const black16Rh22 = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 22);
  static const black16R = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 19.2);
  static const black16M = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 19.2);
  static const black16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 19.2);
  static const black18M = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 14.4);
  static const black18B = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 21.6);
  static const black20B = _NotoSansKrStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 24);
  static const black24B = _NotoSansKrStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 24);

  static const disableText12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.disableText, height: 14.4);
  static const disableText12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 14.4);
  static const disableText12B = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorPalette.disableText, height: 14.4);
  static const disableText13R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 15.6);
  static const disableText14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.disableText, height: 15.6);
  static const disableText14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 16.8);

  static const greySubText12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.greySubText, height: 12);
  static const greySubText12Rh14 = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.greySubText, height: 14.4);
  static const greySubText14Rh15_6 = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.greySubText, height: 15.6);
  static const greySubText14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.greySubText, height: 16.8);
  static const greySubText14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.greySubText, height: 18);

  static const lightBg12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.lightBg, height: 14.4);
  static const lightBg12B = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorPalette.lightBg, height: 14.4);
  static const lightBgOverText12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.lightBgOverText, height: 14.4);
  static const lightBgOverText12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.lightBgOverText, height: 14.4);
  static const lightBgOverText14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.lightBgOverText, height: 15.6);
  static const lightBgOverText14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.lightBgOverText, height: 15.6);
  static const lightBgOverText16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.lightBgOverText, height: 19.2);
  static const lightBgOverText16M = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w500, color: ColorPalette.lightBgOverText, height: 19.2);
  static const lightBgOverText24B = _NotoSansKrStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ColorPalette.lightBgOverText, height: 28.8);

  static const lightBgOver16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.lightBgOver, height: 19.2);

  /// PhraseItem disable color
  static const lightBgOverBorder14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.lightBgOverBorder, height: 16.8);

  static const tabEnable14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.tabEnable, height: 16.8);

  static const white10R = _NotoSansKrStyle(fontSize: 10, fontWeight: FontWeight.w400, color: ColorPalette.white, height: 12);
  static const white12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 14.4);
  static const white14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 17);
  static const white14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 17);
  static const white16R = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.white, height: 19.2);
  static const white16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 19.2);
  static const white18M = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 16.8);
  static const white18B = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 16.8);
  static const white20B = _NotoSansKrStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 23);
  static const white22BL = _NotoSansKrStyle(fontSize: 22, fontWeight: FontWeight.w900, color: ColorPalette.white, height: 26);

  static const succeedB12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.succeedB, height: 14.4);
  static const succeedB12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.succeedB, height: 14.4);
  static const succeedM13M = _NotoSansKrStyle(fontSize: 13, fontWeight: FontWeight.w500, color: ColorPalette.succeedM, height: 17.18);
  static const failure12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.failure, height: 14.4);
  static const failure13M = _NotoSansKrStyle(fontSize: 13, fontWeight: FontWeight.w500, color: ColorPalette.failure, height: 17.18);

  static const boxButton12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.boxButton, height: 14.4);
  static const boxButton12B = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorPalette.boxButton, height: 14.4);
  static const boxButton14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.boxButton, height: 15.6);
  static const boxButton14Rh16_8 = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.boxButton, height: 16.8);
  static const boxButton14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.boxButton, height: 17);
  static const boxButton14Mh16_8 = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.boxButton, height: 16.8);
  static const boxButton14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.boxButton, height: 17);
  static const boxButton16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.boxButton, height: 17);
  static const boxButton18M = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorPalette.boxButton, height: 17);
  static const boxButton18B = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.boxButton, height: 17);

  static const underlineTextColor14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.underlineTextColor, height: 19.2);
  static const underlineTextColor14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.underlineTextColor, height: 19.2);
  static const underlineTextColor14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.underlineTextColor, height: 19.2);

  static const mainBoxHover12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.mainBoxHover, height: 14.4);

  static const popupMenuDisableText14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.popupMenuDisableText, height: 16.8);
}

class _NotoSansKrStyle extends TextStyle {
  const _NotoSansKrStyle({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    Paint? foreground,
  }) : super(
          fontFamily: fontFamily ?? kDefaultFontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height == null || fontSize == null ? null : height / fontSize, // textHeight 비율로 계산해줌
          leadingDistribution: TextLeadingDistribution.proportional, // fontHeight 정가운데에 텍스트가 오게
          foreground: foreground,
        );
}
