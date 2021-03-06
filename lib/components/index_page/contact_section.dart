import 'package:flutter/material.dart';

import 'package:portfolio/components/utils/social_contacts.dart';
import 'package:portfolio/constants/constants.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              fontSize: 40.0,
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
