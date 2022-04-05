import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/dummy_data/dummy_data.dart';
import 'package:flutter_gitpage_home/view/pages/home/components/book_list_item.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth = min(constraints.maxWidth / 2.5, 250);
        final itemHeight = itemWidth * 1.2;
        return SizedBox(
          width: double.infinity,
          height: itemHeight,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BookListItem(book: DummyData.books[index], itemWidth: itemWidth, itemHeight: itemHeight);
              },
              separatorBuilder: (context, index) => eWidth(itemWidth * 0.03),
              itemCount: DummyData.books.length),
        );
      },
    );
  }
}
