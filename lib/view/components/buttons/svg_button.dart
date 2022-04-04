import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/view/components/buttons/state_button.dart';
import 'package:flutter_gitpage_home/view/components/buttons/svg_button_theme.dart';
import 'package:flutter_svg/svg.dart';

/*
 * 앱 전역으로 Svg버튼 편하게 사용하려고 만든 위젯
 * 상태(Hover, Click, Normal)에 따른 색상은 SvgButtonTheme에서 가져옴
 */
class SvgButton extends StatelessWidget {
  const SvgButton({
    Key? key,
    required this.assets,
    required this.size,
    required this.theme,
    this.onClick,
  }) : super(key: key);

  final String assets;

  final double size;

  final SvgButtonTheme theme;

  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return StateButton(
      onClick: onClick,
      builder: (context, isHover, isClick) {
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: isClick ? theme.clickBgColor : (isHover ? theme.hoverBgColor : theme.defaultBgColor),
            borderRadius: BorderRadius.circular(6),
          ),
          child: SvgPicture.asset(
            assets,
            color: isClick ? theme.clickColor : (isHover ? theme.hoverColor : theme.defaultColor),
          ),
        );
      },
    );
  }
}
