import 'package:flutter/material.dart';
import 'package:portfolio/components/intro_text.dart';
import 'package:portfolio/components/navbar.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/constants/constants.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          left: 120,
          right: 120,
          top: 20,
        ),
        decoration: boxDecorationGradient,
        child: Column(
          children: <Widget>[
            Navbar(),
            IntroText(),
            SizedBox(height: 20),
            Skills(),
          ],
        ),
      ),
    );
  }
}
