import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/main_text.dart';
import 'package:portfolio/constants/constants.dart';

class IntroText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 40.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: kHeadingText1,
              fontSize: 40,
            ),
            MainText(
              text: kHeadingText2,
              fontSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
