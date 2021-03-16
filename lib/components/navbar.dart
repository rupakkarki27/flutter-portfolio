import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class Navbar extends StatelessWidget {
  final navLinks = ["Article", "Snippets", "About", "Home"];
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 120,
          right: 120,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _navHome(),
            Row(
              children: _navLinks(),
            )
          ],
        ),
      ),
    );
  }

  Widget _navHome() {
    return Text(
      kName,
      style: TextStyle(
        color: kPrimaryTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  List<Widget> _navLinks() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.all(25.0),
        child: Text(
          text,
          style: TextStyle(
            color: kNavbarLinkColor,
            fontSize: 16,
          ),
        ),
      );
    }).toList();
  }
}
