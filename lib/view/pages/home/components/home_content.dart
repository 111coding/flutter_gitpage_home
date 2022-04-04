import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/routes.dart';
import 'package:flutter_gitpage_home/view/components/buttons/label_button.dart';
import 'package:flutter_gitpage_home/view/pages/home/components/book_list.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  void _books() {
    Routes.books.toNamed();
  }

  void _portfolio() {}

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            children: [
              eHeight(20),
              LabelButton(label: "Books", onClick: _books),
              eHeight(20),
              const BookList(),
              eHeight(40),
              LabelButton(label: "Portfolio", onClick: _portfolio),
            ],
          ),
        ),
      ),
    );
  }
}
