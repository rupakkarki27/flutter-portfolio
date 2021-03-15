// widget for main text

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class MainText extends StatelessWidget {
  @required
  final String text;
  @required
  final double fontSize;

  MainText({
    this.text,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: kPrimaryTextColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
