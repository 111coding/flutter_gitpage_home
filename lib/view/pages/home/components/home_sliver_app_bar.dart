import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/font.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_button.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_button_theme.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_buttons.dart';
import 'package:flutter_gitpage_home/view/components/custom_sliver.dart';
import 'package:flutter_svg/svg.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 프로필이미지 시작위치와 끝위치

    return CustomSliver(
      builder: (context, offset, statusBarHeight) {
        return Container(
          color: ColorPalette.black,
          child: Stack(
            children: [
              _background(offset),
              _logoText(offset),
              _btnRow(offset),
            ],
          ),
        );
      },
    );
  }

  Widget _background(double offset) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Image.asset(
              "assets/img/mac_bg.jpg",
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    ColorPalette.black.withOpacity(0.05),
                    ColorPalette.black.withOpacity(0.1),
                    ColorPalette.black.withOpacity(0.15),
                    ColorPalette.black.withOpacity(0.50),
                    ColorPalette.black,
                  ],
                ),
              ),
              // color: ColorPalette.black.withOpacity(max(0.1, 1 - offset)),
            ),
            Container(
              color: ColorPalette.black.withOpacity(max(0.1, 1 - offset)),
            ),
          ],
        );
      },
    );
  }

  Widget _logoText(double offset) {
    final textMarginTween = EdgeInsetsTween(
      begin: const EdgeInsets.only(left: kHorizontalPadding, top: 0),
      end: const EdgeInsets.only(left: 0, bottom: 50),
    );
    final textAlignTween = AlignmentTween(begin: Alignment.centerLeft, end: Alignment.center);
    final textSizeTween = Tween<double>(begin: 18, end: 36);
    final textColorTween = ColorTween(begin: ColorPalette.red, end: Colors.white);

    return Padding(
      padding: textMarginTween.lerp(offset),
      child: Align(
        alignment: textAlignTween.lerp(offset),
        child: Text(
          "111CODING",
          style: TextStyle(
            fontFamily: kDefaultFontFamily,
            color: textColorTween.lerp(offset),
            fontSize: textSizeTween.lerp(offset),
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }

  Widget _btnRow(double offset) {
    final marginTween = EdgeInsetsTween(
      begin: const EdgeInsets.only(right: kHorizontalPadding, top: 0),
      end: const EdgeInsets.only(right: 0, top: 50),
    );
    final alignTween = AlignmentTween(begin: Alignment.centerRight, end: Alignment.center);

    final sizeTween = Tween<double>(begin: 30, end: 36);
    final iconSize = sizeTween.lerp(offset);

    return Padding(
      padding: marginTween.lerp(offset),
      child: Align(
        alignment: alignTween.lerp(offset),
        child: SizedBox(
          width: iconSize * 2.85 + 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgButtons.iconGit.btn(size: iconSize, theme: SvgButtonThemes.iconDefailt),
              eWidth(4),
              SvgButtons.iconYoutube.btn(size: iconSize * 0.85, theme: SvgButtonThemes.iconDefailt),
              eWidth(4),
              SvgButtons.iconNaver.btn(size: iconSize, theme: SvgButtonThemes.iconDefailt),
            ],
          ),
        ),
      ),
    );
  }
}
