import 'package:flutter_gitpage_home/model/book.dart';

class DummyData {
  static final books = [
    Book(idx: 1, title: "Flutter", src: "https://111coding.github.io/books-Flutter", imgSrc: "assets/img/flutter.jpg"),
    Book(idx: 2, title: "SwiftUI", src: "https://111coding.github.io/books-SwiftUI", imgSrc: "assets/img/swiftui.jpg"),
    Book(idx: 3, title: "Gitbook", src: "https://111coding.github.io/books-Gitbook", imgSrc: "assets/img/gitbook.jpg"),
    Book(idx: 4, title: "Spring Boot", src: "javascript:alert('준비중입니다.')", imgSrc: "assets/img/springboot.jpg"),
    Book(idx: 5, title: "AWS", src: "javascript:alert('준비중입니다.')", imgSrc: "assets/img/aws.jpg"),
  ];
}
