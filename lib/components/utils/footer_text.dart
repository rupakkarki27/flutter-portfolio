import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class FooterText extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    color: kFooterTextColor,
    fontSize: 14.0,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          kFooterText1,
          style: _textStyle,
        ),
      ],
    );
  }
}
