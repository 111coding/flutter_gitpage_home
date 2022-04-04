import 'package:flutter/material.dart';
import 'package:flutter_gitpage_home/constants/size_config.dart';
import 'package:flutter_gitpage_home/view/components/buttons/label_button.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            children: [
              eHeight(10),
              const LabelButton(label: "Books"),
              const LabelButton(label: "Portfolio"),
            ],
          ),
        ),
      ),
    );
  }
}
