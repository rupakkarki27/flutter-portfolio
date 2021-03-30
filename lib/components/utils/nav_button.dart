import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class NavButton extends StatelessWidget {
  @required
  final String navText;

  NavButton({this.navText});
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          navText,
          style: TextStyle(
            color: kNavbarLinkColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
