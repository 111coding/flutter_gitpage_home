import 'package:flutter/material.dart';

/*
 * 앱 전역으로 사용할 색상
 */

class ColorPalette {
  static const mainGradient = LinearGradient(colors: [appMain, appMainLight]);

  /// default text
  static const black = Color(0xFF141414);

  /// highlight
  static const red = Color(0xFFE9001F);

  /// highlight Opacity 70%
  static const red70 = Color(0xB3E9001F);

  /// white
  static const white = Color(0xFFFFFFFF);

  /// white opacity 80%
  static const white80 = Color(0xCCFFFFFF);

  /// white opacity 60%
  static const white60 = Color(0x99FFFFFF);

  /// white opacity 10%
  static const blackO10 = Color(0x1A000000);

  /// red appMain
  static const appMain = Color(0xFFFF3200);

  /// orenge Gradeint end
  static const appMainLight = Color(0xFFFF6400);

  /// Tab Enable
  static const tabEnable = Color(0xFF282D32);

  /// disableText
  static const disableText = Color(0xFFAAB9C8);

  /// tabDislableUnderline circleBorder greyLine
  static const greyLine = Color(0xFFDEE6F2);

  /// whiteLine
  static const whiteLine = Color(0x33FFFFFF);

  /// lightBg btnColorGrey
  static const lightBg = Color(0xFFF6F9FC);

  /// lightBgOver Border
  static const lightBgOverBorder = Color(0xFFE4E9F1);

  /// btnOverBg
  static const lightBgOver = Color(0xFFFEEFEA);

  /// btnOverText
  static const lightBgOverText = Color(0xFFFD6926);

  /// icon 40x40 사이즈 디폴트 컬러
  static const icon40Blue = Color(0xFF2A85FD);

  /// icon 32x32 사이즈 디폴트 라이트 컬러
  static const icon32light = Color(0xFFC0CDDA);

  /// icon 32x32 사이즈 디폴트 중간 컬러
  static const icon24normal = Color(0xFF96ABCD);

  /// SVG ICON
  static const svgIcon = Color(0xFFDBE2EA);

  /// green Succeed BOLD
  static const succeedB = Color(0xFF00B75E);

  /// green Succeed light
  static const succeedM = Color(0xFF00B867);

  /// Orenge Failure
  static const failure = Color(0xFFFF686D);

  /// gradeintAppBarIcon
  static const mainAppBarIcon = Color(0xFFF5E9DD);

  /// btnShadowSt
  static const btnShadowBegin = Color(0xFF707070);

  /// btnShadowEnd
  static const btnShadowEnd = Color(0x29000000);

  /// grey subText
  static const greySubText = Color(0xFF646E7E);

  /// grey subText
  static const boxButton = Color(0xFFFD501E);

  /// 연한 회색, 회원가입 체크 아이콘
  static const checkDisable = Color(0xFFE9EDF2);

  /// 다이얼로그 배경, 블랙 투명 50%
  static const dialogBarrierColor = Color(0x80000000);

  /// 다이얼로그 x 테두리
  static const iconBorder = Color(0xFFEDF1F6);

  /// 언더라인 강조 텍스트 색상
  static const underlineTextColor = Color(0xFFE83D32);

  /// PhraseBox, Item Color
  static const phraseColor = Color(0xFFF5F2E9);

  /// ConnectWallet Rourd Check true
  static const roundCheckGreen = Color(0xFF00C47D);

  /// ConnectWallet Rourd Check false
  static const roundCheckGrey = Color(0xFFC2D1E0);

  static const connected = Color(0xFF00F026);

  static const mainBoxHover = Color(0xFF282B32);

  static const popupMenuDisableText = Color(0xFF828E9D);
}
