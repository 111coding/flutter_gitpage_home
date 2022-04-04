import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/theme.dart';
import 'package:flutter_gitpage_home/view/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), // 스크롤바 숨기기
      theme: theme(),
      home: const HomePage(),
    );
  }
}
