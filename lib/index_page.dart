import 'package:flutter/material.dart';
import 'package:portfolio/components/contact_section.dart';
import 'package:portfolio/components/footer_section.dart';
import 'package:portfolio/components/intro_text.dart';
import 'package:portfolio/components/navbar.dart';
import 'package:portfolio/components/project_section.dart';
import 'package:portfolio/components/skills.dart';
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
