import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/font.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';

/*
 * 앱 전체 디폴트 테마 데이터
 */

ThemeData theme() {
  return ThemeData(
    primaryColor: ColorPalette.appMain,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: kDefaultFontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    toolbarHeight: kAppBarHeight,
    color: ColorPalette.white,
    elevation: 0,
    iconTheme: IconThemeData(color: ColorPalette.black),
    titleTextStyle: NotoSansKr.black16B,
    toolbarTextStyle: NotoSansKr.black16B,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: NotoSansKr.black20B,
    bodyMedium: NotoSansKr.black16B,
    bodySmall: NotoSansKr.black14M,
  );
}
