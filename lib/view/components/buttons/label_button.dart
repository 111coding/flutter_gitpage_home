import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/font.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/view/components/buttons/state_button.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_buttons.dart';
import 'package:flutter_svg/svg.dart';

/// 버튼 >
class LabelButton extends StatelessWidget {
  const LabelButton({
    Key? key,
    required this.label,
    this.height = 50,
    this.horizontalMargin = 0,
    this.onClick,
  }) : super(key: key);

  final String label;

  final double height;

  final double horizontalMargin;

  final Function()? onClick;

  // 우선순위 호버1 클릭2
  Color _iconColor(bool hover, bool click) => click ? ColorPalette.red70 : (hover ? ColorPalette.red : ColorPalette.white);
  TextStyle _textStyle(bool hover, bool click) => click ? NotoSansKr.red18BO70 : (hover ? NotoSansKr.red18B : NotoSansKr.white18B);

  @override
  Widget build(BuildContext context) {
    return StateButton(
      onClick: onClick,
      builder: (context, isHover, isClick) {
        return Container(
          width: double.infinity,
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: _textStyle(isHover, isClick)),
              _icon(_iconColor(isHover, isClick)),
            ],
          ),
        );
      },
    );
  }

  Widget _icon(Color color) => SizedBox(
        width: 36,
        height: 36,
        child: SvgPicture.asset(
          SvgButtons.arrow.assetPath!,
          color: color,
        ),
      );
}
