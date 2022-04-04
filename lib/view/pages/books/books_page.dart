import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/color_palette.dart';
import 'package:flutter_gitpage_home/view/pages/books/components/books_body.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.black,
      body: BooksBody(),
    );
  }
}
