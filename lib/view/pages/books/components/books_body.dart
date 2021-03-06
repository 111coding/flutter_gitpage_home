import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/dummy_data/dummy_data.dart';
import 'package:flutter_gitpage_home/view/pages/home/components/book_list_item.dart';

class BooksBody extends StatelessWidget {
  const BooksBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        padding: const EdgeInsets.only(right: kHorizontalPadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double itemWidth = min(constraints.maxWidth / 2.5, 250);
            final itemHeight = itemWidth * 1.2;

            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Wrap(
                spacing: itemWidth * 0.03,
                runSpacing: itemWidth * 0.05,
                children: DummyData.books.map((e) => BookListItem(book: e, itemWidth: itemWidth, itemHeight: itemHeight)).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
