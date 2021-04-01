import 'package:flutter/material.dart';

import 'package:portfolio/components/utils/social_contacts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // change font size depending on screen size
    final double _fontSize =
        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? 40.0
            : 30.0;
    return Container(
      margin: EdgeInsets.only(
        top: 45,
        bottom: 45.0,
      ),
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: kButtonBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            kContactText1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: _fontSize,
              color: kPrimaryTextColor,
            ),
          ),
          Text(
            kContactText2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kNavbarLinkColor,
            ),
          ),
          SocialContacts(),
        ],
      ),
    );
  }
}
