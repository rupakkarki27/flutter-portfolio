import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/learn_more_button.dart';
import 'package:portfolio/constants/constants.dart';

class ProjectCard extends StatelessWidget {
  @required
  final String projectName;
  @required
  final String projectDescription;
  @required
  final double cardWidth;

  ProjectCard({
    this.projectName,
    this.projectDescription,
    this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(
          color: kButtonBackground,
          border: Border(
            left: BorderSide(
              color: Colors.red,
              width: 5.0,
            ),
          ),
        ),
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.only(
          right: 30,
          left: 30,
        ),
        height: 262,
        width: cardWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                projectName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                projectDescription,
                style: TextStyle(
                  color: Color.fromRGBO(202, 202, 202, 1),
                  fontSize: 15.0,
                ),
              ),
              LearnMoreButton(),
            ],
          ),
        ),
      ),
    );
  }
}
