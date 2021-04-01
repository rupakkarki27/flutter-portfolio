import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/main_text.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';

class IntroText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double fontSizeMain =
        (Responsive.isDesktop(context) || Responsive.isTablet(context))
            ? 40.0
            : 30.0;
    final double fontSizeSub =
        (Responsive.isDesktop(context) || Responsive.isTablet(context))
            ? 30.0
            : 20.0;
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
              fontSize: fontSizeMain,
            ),
            MainText(
              text: kHeadingText2,
              fontSize: fontSizeSub,
            ),
          ],
        ),
      ),
    );
  }
}
