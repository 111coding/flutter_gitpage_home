import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/constants/font.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.black,
      child: Column(
        children: [
          Text(
            "Books",
            style: NotoSansKr.white18B,
          ),
          Text(
            "Portfolio",
            style: NotoSansKr.white18B,
          ),
        ],
      ),
    );
  }
}
