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
  @required
  final Color sideBorderColor;

  ProjectCard({
    this.projectName,
    this.projectDescription,
    this.cardWidth,
    this.sideBorderColor,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: 40.0,
            right: 15.0,
          ),
          height: 240.0,
          width: cardWidth,
          decoration: BoxDecoration(
            color: kButtonBackground,
            border: Border(
              left: BorderSide(
                color: sideBorderColor,
                width: 5.0,
              ),
            ),
          ),
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
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromRGBO(202, 202, 202, 1),
                  fontSize: 14.0,
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
