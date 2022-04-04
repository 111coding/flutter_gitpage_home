import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/routes.dart';
import 'package:flutter_gitpage_home/theme.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), // 스크롤바 숨기기
      theme: theme(),
      getPages: generateRoute(),
      // initialRoute: Routes.login.name,
      // initialRoute: Routes.signUp.name,
      initialRoute: Routes.home.name,
    );
  }
}
