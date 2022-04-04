import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
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
              fit: BoxFit.fitWidth,
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
      end: const EdgeInsets.only(left: 0, top: 0),
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
            color: textColorTween.lerp(offset),
            fontSize: textSizeTween.lerp(offset),
          ),
        ),
      ),
    );
  }

  Widget _btnRow(double offset) {
    final marginTween = EdgeInsetsTween(
      begin: const EdgeInsets.only(right: kHorizontalPadding, top: 0),
      end: const EdgeInsets.only(right: 0, top: 100),
    );
    final alignTween = AlignmentTween(begin: Alignment.centerRight, end: Alignment.center);

    final sizeTween = Tween<double>(begin: 30, end: 36);
    final iconSize = sizeTween.lerp(offset);

    return Padding(
      padding: marginTween.lerp(offset),
      child: Align(
        alignment: alignTween.lerp(offset),
        child: SizedBox(
          width: sizeTween.lerp(offset) * 3 + 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svg/icon-git.svg",
                width: iconSize,
                color: Colors.white,
              ),
              eWidth(4),
              SvgPicture.asset(
                "assets/svg/icon-youtube.svg",
                color: Colors.white,
                width: iconSize * 0.85,
              ),
              eWidth(4),
              SvgPicture.asset(
                "assets/svg/icon-naver.svg",
                color: Colors.white,
                width: iconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
