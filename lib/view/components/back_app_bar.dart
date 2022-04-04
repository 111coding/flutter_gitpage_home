import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/font.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/view/components/buttons/state_button.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_buttons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

/*
 * 앱 전역으로 사용할 Back 버튼 달린 앱바
 * 유저네임 보일지 안보일지 선택가능
 */
class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  BackAppBar({
    Key? key,
    this.title = "",
  }) : super(key: key);

  final String title;

  void back() {
    Get.back();
  }

  Color _iconColor(bool hover, bool click) => click ? ColorPalette.red70 : (hover ? ColorPalette.red : ColorPalette.white);

  TextStyle _textStyle(bool hover, bool click) => click ? NotoSansKr.red18BO70 : (hover ? NotoSansKr.red18B : NotoSansKr.white18B);

  @override
  final Size preferredSize = Size.fromHeight(kAppBarHeight + MediaQuery.of(Get.context!).padding.top);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      decoration: const BoxDecoration(color: ColorPalette.black),
      child: Column(
        children: [
          eHeight(preferredSize.height - kAppBarHeight),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: StateButton(
          onClick: back,
          builder: (context, isHover, isClick) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _icon(isHover, isClick),
                eWidth(8),
                _text(title, isHover, isClick),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _text(String v, bool isHover, bool isClick) => Expanded(
        child: Container(
          height: 36,
          alignment: Alignment.centerLeft,
          child: Text(v, style: _textStyle(isHover, isClick), overflow: TextOverflow.ellipsis),
        ),
      );

  Widget _icon(bool isHover, bool isClick) => Transform.rotate(
        angle: pi,
        child: SizedBox(
          width: 36,
          height: 36,
          child: SvgPicture.asset(
            SvgButtons.arrow.assetPath!,
            color: _iconColor(isHover, isClick),
          ),
        ),
      );
}
