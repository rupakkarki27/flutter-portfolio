import 'package:flutter/material.dart';
import 'package:portfolio/components/intro_text.dart';
import 'package:portfolio/components/navbar.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/components/utils/project_card.dart';
import 'package:portfolio/constants/constants.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              SizedBox(
                height: 30,
              ),
              Text(
                "Projects",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ProjectCard(
                cardWidth: 700,
                projectName: "CovidDash",
                projectDescription: "Hello World",
              ),
              ProjectCard(
                cardWidth: 700,
                projectName: "CovidDash",
                projectDescription: "Hello World",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
