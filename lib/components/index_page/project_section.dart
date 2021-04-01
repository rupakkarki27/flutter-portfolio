import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/callbacks/learn_more_callback.dart';
import 'package:portfolio/components/utils/project_card.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 700,
            // Using manual approach to display the projects text in either
            // center or left aligned w.r.t screen size
            child:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? Text(
                        "Projects",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    : Center(
                        child: Text(
                          "Projects",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
          ),
          SizedBox(
            height: 15.0,
          ),
          ProjectCard(
            // change the card width depending on the screen type
            cardWidth:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? 700
                    : 350,
            projectName: "CovidDash",
            projectDescription: descriptionCovidDash,
            sideBorderColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            callback: covidDashCallback,
          ),
          SizedBox(
            height: 8.0,
          ),
          // Used wrap instead of the Row widget, so that the items will automatically
          // wrap to the next line without causing render overflow
          Wrap(
            direction:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? Axis.horizontal
                    : Axis.vertical,
            children: [
              ProjectCard(
                cardWidth: 346,
                projectName: "rupakkarki.com.np",
                projectDescription: descriptionPortfolio,
                sideBorderColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                callback: portfolioCallback,
              ),
              SizedBox(width: 8.0, height: 8.0),
              ProjectCard(
                cardWidth: 346,
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
            cardWidth:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? 700
                    : 350,
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
