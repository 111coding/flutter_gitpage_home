import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/view/pages/books/books_page.dart';
import 'package:flutter_gitpage_home/view/pages/home/home_page.dart';
import 'package:get/route_manager.dart';

/*
 * 앱에 사용되는 라우터 관련
 * 1. Routes에 enum 등록
 * 2. routePath에 값 할당
 * 3. generateRoute return value에 추가
 * 사용은 Routes의 확장함수 이용(개발 시 오타로 인한 실수 방지)
 * ex) Routes.setting.toNamed();
 */

enum Routes {
  home,
  books,
  portfolio,
}

const Map<Routes, String> routePath = {
  Routes.home: "/",
  Routes.books: "/books",
  Routes.portfolio: "/portfolio",
};

List<GetPage> generateRoute() => [
      GetPage(name: Routes.home.path, page: () => const HomePage()),
      GetPage(name: Routes.books.path, page: () => const BooksPage()),
    ];

extension RoutesExtension on Routes {
  String get path => routePath[this]!;

  Future? toNamed({Map<String, String>? parameters, dynamic argument, int? id}) => Get.toNamed(path, parameters: parameters, arguments: argument, id: id);

  Future? offNamed({Map<String, String>? parameters, dynamic argument, int? id}) => Get.offNamed(path, parameters: parameters, arguments: argument, id: id);

  Future? offAllNamed({Map<String, String>? parameters, dynamic argument, int? id, RoutePredicate? predicate}) => Get.offAllNamed(path, arguments: argument, id: id, parameters: parameters, predicate: predicate);
}
