import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';

/*
 * SvgButton 테마
 * 상태(Hover, Click, Normal)에 따른 색상
 */
class SvgButtonTheme {
  const SvgButtonTheme({
    required this.defaultColor,
    required this.hoverColor,
    required this.clickColor,
    this.defaultBgColor,
    this.hoverBgColor,
    this.clickBgColor,
  });

  final Color defaultColor;
  final Color hoverColor;
  final Color clickColor;
  final Color? defaultBgColor;
  final Color? hoverBgColor;
  final Color? clickBgColor;
}

/// Button themes in app
class SvgButtonThemes {
  /// 프로젝트에 정의된 40사이즈 아이콘 테마
  ///
  /// 디폴트 블루, 호버&클릭 오렌지
  static const icon40 = SvgButtonTheme(
    defaultColor: ColorPalette.icon40Blue,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
  );

  /// 프로젝트에 정의된 32사이즈 아이콘 테마
  ///
  /// 디폴트 블랙, 호버&클릭 오렌지
  static const icon32 = SvgButtonTheme(
    defaultColor: ColorPalette.black,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
  );

  /// 프로젝트에 정의된 32사이즈 백그라운드 아이콘 테마
  ///
  /// 디폴트 아이콘 색상은 화이트, 백그라운드는 black opacity 10% 블랙
  ///
  /// 호버,클릭 시 아이콘 오렌지
  static const icon32BgO10 = SvgButtonTheme(
    defaultColor: ColorPalette.white,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
    defaultBgColor: ColorPalette.blackO10,
    hoverBgColor: ColorPalette.blackO10,
    clickBgColor: ColorPalette.blackO10,
  );

  /// 프로젝트에 정의된 32사이즈 백그라운드 아이콘 테마
  ///
  /// 아이콘 색상은 화이트 블랙, 백그라운드컬러 라이트그레이!
  static const icon32LightBg = SvgButtonTheme(
    defaultColor: ColorPalette.black,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
    defaultBgColor: ColorPalette.lightBg,
    hoverBgColor: ColorPalette.lightBgOver,
    clickBgColor: ColorPalette.lightBgOver,
  );

  /// 프로젝트에 정의된 32사이즈 백그라운드 아이콘 테마
  ///
  /// 아이콘 색상은 화이트로 동일하며, 호버&클릭 시 백그라운드 컬러가 black opacity 10%로 변경!
  static const icon32Bg = SvgButtonTheme(
    defaultColor: ColorPalette.white,
    hoverColor: ColorPalette.white,
    clickColor: ColorPalette.white,
    defaultBgColor: Colors.transparent,
    hoverBgColor: ColorPalette.blackO10,
    clickBgColor: ColorPalette.blackO10,
  );

  /// 프로젝트에 정의된 32사이즈 아이콘 테마
  ///
  /// 디폴트 연한블루그레이, 호버&클릭 오렌지
  static const icon32light = SvgButtonTheme(
    defaultColor: ColorPalette.icon32light,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
  );

  /// 프로젝트에 정의된 24사이즈 아이콘 테마
  ///
  /// 디폴트 블루그레이, 호버&클릭 오렌지
  static const icon24 = SvgButtonTheme(
    defaultColor: ColorPalette.icon24normal,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
  );

  static const icon24W = SvgButtonTheme(
    defaultColor: ColorPalette.white,
    hoverColor: ColorPalette.lightBgOverText,
    clickColor: ColorPalette.lightBgOverText,
  );

  static const iconMainBoxW = SvgButtonTheme(
    defaultColor: ColorPalette.white,
    hoverColor: ColorPalette.mainBoxHover,
    clickColor: ColorPalette.mainBoxHover,
  );

  /// 프로젝트에 정의된 16사이즈 아이콘 테마
  ///
  /// 클릭&호버 시 색상 동일하며 원형 버튼 아이콘용 테마
  static const icon16 = SvgButtonTheme(
    defaultColor: ColorPalette.disableText,
    hoverColor: ColorPalette.disableText,
    clickColor: ColorPalette.disableText,
  );

  /// default
  static final iconDefailt = SvgButtonTheme(
    defaultColor: ColorPalette.white,
    hoverColor: ColorPalette.white.withOpacity(0.8),
    clickColor: ColorPalette.white.withOpacity(0.6),
  );
}
