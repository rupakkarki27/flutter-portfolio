import 'package:flutter/material.dart';
import 'package:portfolio/components/index_page/contact_section.dart';
import 'package:portfolio/components/index_page/footer_section.dart';
import 'package:portfolio/components/index_page/intro_text.dart';
import 'package:portfolio/components/index_page/project_section.dart';
import 'package:portfolio/components/index_page/skills.dart';
import 'package:portfolio/components/utils/navbar.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // The Responsive widget is custom defined using the Layout Builder
        // We pass the required widgets on all the three screen parameters
        // and it takes care of building the necessary widgets for us.
        child: Responsive(
          //  Mobile Screen
          mobile: Container(
            color: kBackgroundColor2,
            child: Column(
              children: <Widget>[
                Navbar(),
                IntroText(),
                SizedBox(height: 20),
                Skills(),
                SizedBox(height: 30),
                SizedBox(height: 20),
                ProjectSection(),
                ContactSection(),
                FooterSection(),
              ],
            ),
          ),
          // Tablet Screen
          tablet: Container(
            color: kBackgroundColor2,
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
          // Desktop Screen
          desktop: Container(
            color: kBackgroundColor2,
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
      ),
    );
  }
}
