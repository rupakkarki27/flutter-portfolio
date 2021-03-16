import 'dart:math';

import 'package:flutter/material.dart';
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
            projectDescription: kprojectDescription,
            sideBorderColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
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
                projectDescription: kprojectDescription,
                sideBorderColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
              SizedBox(
                width: 8.0,
              ),
              ProjectCard(
                cardWidth: 345,
                projectName: "Verbose.",
                projectDescription: kprojectDescription,
                sideBorderColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          ProjectCard(
            cardWidth: 700,
            projectName: "CovidDash",
            projectDescription: kprojectDescription,
            sideBorderColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
