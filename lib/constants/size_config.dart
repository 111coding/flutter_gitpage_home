import 'package:flutter/material.dart';

/*
 * 사이즈에 관한 상수 및 유틸함수
 */

/// 디자인 베이스 너비
const double kBaseWidth = 390;

/// 디자인 베이스 높이
const double kBaseHeight = 844;

/// 공통 앱바 길이
const double kAppBarHeight = 70;

/// 메인 프로필 슬리버 최대높이(상태바제외)
const double kMainSliverMaxHeight = 430;

/// 공통 가로 패딩
const double kHorizontalPadding = 20;

/// 반응형 시 너비 최대값
const double kMaxWidth = 1200;

/// 탭바 높이
const double kTabHeight = 40;

/// 탭바 감싸는 컨테이너 높이
const double kTabConatinerHeight = 60;

// /// 디바이스 너비
// double getScreenWidth() {
//   return MediaQuery.of(Get.context!).size.width;
// }

// /// 디바이스 높이
// double getScreenHeight() {
//   return MediaQuery.of(Get.context!).size.height;
// }

// // 반응형 너비
// double getProportionateScreenWidth(double width) {
//   return (width / kBaseWidth) * getScreenWidth();
// }

// // 반응형 높이
// double getProportionateScreenHeight(double height) {
//   return (height / kBaseHeight) * getScreenHeight();
// }

/// empty height
Widget eHeight(double height) => SizedBox(height: height);

/// empty width
Widget eWidth(double width) => SizedBox(width: width);

/// Horizontal Line
// Widget hLine({double width = double.infinity, double height = 1, double margin = kHorizontalPadding, double? maxWidth, Color color = ColorPalette.greyLine}) => Container(
//       width: width,
//       height: height,
//       color: color,
//       margin: EdgeInsets.symmetric(horizontal: margin),
//       constraints: maxWidth != null ? BoxConstraints(maxWidth: maxWidth) : null,
//     );

/// Vertical Line
// Widget vLine({double width = 2, double height = double.infinity}) => Container(
//       width: width,
//       height: height,
//       color: ColorPalette.disableText,
//     );

/// 상태바 길이의 위젯
Widget eStatusBar(context) => SizedBox(height: MediaQuery.of(context).padding.top);
