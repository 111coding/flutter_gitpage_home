import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_button.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_button_theme.dart';
import 'package:get/get.dart';

// test
// SvgButtons.send.btn(size: 32, theme: SvgButtonThemes.icon32Bg);
// all list
// ListView.separated(
//   itemCount: SvgButtons.values.length,
//   itemBuilder: (context, index) {
//     var item = SvgButtons.values[index];
//     return Container(
//       color: Colors.green[100],
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text("$index"),
//           item.btn(size: 40, theme: SvgButtonThemes.icon40),
//           item.btn(size: 32, theme: SvgButtonThemes.icon32Bg),
//           item.btn(size: 32, theme: SvgButtonThemes.icon32),
//           item.btn(size: 32, theme: SvgButtonThemes.icon32light),
//           item.btn(size: 24, theme: SvgButtonThemes.icon24),
//           item.btn(size: 16, theme: SvgButtonThemes.icon16),
//         ],
//       ),
//     );
//   },
//   separatorBuilder: (context, index) => eHeight(10),
// ),

// 이넘에 카멜방식으로 등록해야함!
// extension에서 카멜을 스네이크 방식으로 변환해서 처리함
// 파일명은 스네이크방식으로 관리!

enum SvgButtons {
  iconGit,
  iconYoutube,
  iconNaver,
}

extension SvgButtonsExtension on SvgButtons {
  String? get assetName => GetUtils.snakeCase(name);

  String? get assetPath => "assets/svg/$assetName.svg";

  Widget btn({required double size, required SvgButtonTheme theme, Function()? onClick, GlobalKey? key}) {
    String? asset = assetName;
    return asset == null
        ? Container(width: size, height: size, color: Colors.red)
        : SvgButton(
            key: key,
            assets: "assets/svg/$asset.svg",
            size: size,
            theme: theme,
            onClick: onClick,
          );
  }
}
