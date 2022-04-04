import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/model/book.dart';
import 'package:flutter_gitpage_home/view/components/buttons/state_button.dart';
import 'dart:html' as html;

class BookListItem extends StatelessWidget {
  const BookListItem({
    Key? key,
    required this.book,
    required this.itemWidth,
    required this.itemHeight,
  }) : super(key: key);

  final double itemWidth;
  final double itemHeight;
  final Book book;

  Color _borderColor(bool hover, bool click) => click ? ColorPalette.red70 : (hover ? ColorPalette.red : ColorPalette.disableText);

  void _onClick() {
    html.window.open(book.src, book.title);
  }

  @override
  Widget build(BuildContext context) {
    return StateButton(
      onClick: _onClick,
      builder: (context, isHover, isClick) {
        return Container(
          width: itemWidth,
          height: itemHeight,
          color: Colors.transparent,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    book.imgSrc,
                    width: itemWidth * 3 / 4,
                    height: itemHeight,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _text(isHover, isClick),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _text(hover, click) {
    var style = TextStyle(
      fontSize: itemHeight * 0.15,
      leadingDistribution: TextLeadingDistribution.even,
      fontWeight: FontWeight.bold,
    );

    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        width: itemHeight,
        transform: Matrix4.translationValues(itemHeight * 0.02, -itemWidth * 0.3, 0),
        child: Stack(
          children: [
            Text(
              book.title,
              textAlign: TextAlign.end,
              style: style.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = itemWidth * 0.03
                  ..color = _borderColor(hover, click),
              ),
            ),
            Text(
              book.title,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
