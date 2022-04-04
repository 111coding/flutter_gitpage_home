import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    this.height = kMainSliverMaxHeight,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: height,
          width: height,
          child: Image.asset(
            "assets/img/profile.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          height: height,
          width: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black26,
                Colors.black12,
                Colors.black26,
                Colors.black45,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        )
      ],
    );
  }
}
