import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/callbacks/learn_more_callback.dart';
import 'package:portfolio/components/utils/project_card.dart';
import 'package:portfolio/constants/constants.dart';

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 700,
            child: Text(
              "Projects",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          ProjectCard(
            cardWidth: 700,
            projectName: "CovidDash",
            projectDescription: descriptionCovidDash,
            sideBorderColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            callback: covidDashCallback,
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProjectCard(
                cardWidth: 345,
                projectName: "rupakkarki.com.np",
                projectDescription: descriptionPortfolio,
                sideBorderColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                callback: portfolioCallback,
              ),
              SizedBox(
                width: 8.0,
              ),
              ProjectCard(
                cardWidth: 345,
                projectName: "Verbose.",
                projectDescription: descriptionVerbose,
                sideBorderColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                callback: verboseCallback,
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          ProjectCard(
            cardWidth: 700,
            projectName: "Object Detector",
            projectDescription: descriptionObjectDetector,
            sideBorderColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            callback: objectDetectorCallback,
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
