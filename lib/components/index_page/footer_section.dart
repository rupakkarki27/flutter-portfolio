import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/footer_text.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      FooterText(),
      Column(
        children: [
          Text(
            "rupakkarki123@gmail.com",
            style: TextStyle(
              color: kFooterTextColor,
            ),
          ),
          Text(
            "rupak@rupakkarki.com.np",
            style: TextStyle(
              color: kFooterTextColor,
            ),
          ),
        ],
      ),
    ];
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 40.0,
        ),
        child: Container(
          height: 100,
          // build the child widget based on the screen size for the footer
          child: (Responsive.isDesktop(context) || Responsive.isTablet(context))
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: children,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: children,
                ),
        ),
      ),
    );
  }
}
