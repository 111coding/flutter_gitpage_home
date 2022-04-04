import 'package:flutter/material.dart';

typedef StateButtonBuilder = Widget Function(BuildContext context, bool isHover, bool isClick);

/*
 * Hover, Click 되었을때 위젯의 상태를 변화시키는 용도로 사용
 */

class StateButton extends StatefulWidget {
  const StateButton({
    Key? key,
    required this.builder,
    this.onClick,
    this.onClickStart,
  }) : super(key: key);

  final StateButtonBuilder builder;
  final Function()? onClick;
  final Function()? onClickStart;

  @override
  State<StateButton> createState() => _StateButtonState();
}

class _StateButtonState extends State<StateButton> {
  bool _hover = false;
  set hover(bool v) {
    setState(() {
      _hover = v;
    });
  }

  bool _click = false;
  set click(bool v) {
    setState(() {
      _click = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (d) => hover = true,
      onExit: (d) => hover = false,
      child: GestureDetector(
        onTapDown: (d) {
          click = true;
          widget.onClickStart?.call();
        },
        onTapUp: (d) {
          click = false;
          widget.onClick?.call();
        },
        onTapCancel: () => click = false,
        child: widget.builder(context, _hover, _click),
      ),
    );
  }
}
