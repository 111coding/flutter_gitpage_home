import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/view/pages/home/components/home_content.dart';
import 'package:flutter_gitpage_home/view/pages/home/components/home_sliver_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const ClampingScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
        return <Widget>[
          const HomeSliverAppBar(),
        ];
      },
      // 메인
      body: const HomeContent(),
    );
  }
}
