import 'package:flutter/material.dart';
import 'package:portfolio/components/index/contact_section.dart';
import 'package:portfolio/components/index/footer_section.dart';
import 'package:portfolio/components/index/intro_text.dart';
import 'package:portfolio/components/utils/navbar.dart';
import 'package:portfolio/components/index/project_section.dart';
import 'package:portfolio/components/index/skills.dart';
import 'package:portfolio/constants/constants.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          decoration: boxDecorationGradient,
          child: Column(
            children: <Widget>[
              Navbar(),
              IntroText(),
              SizedBox(height: 20),
              Skills(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              ProjectSection(),
              ContactSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
