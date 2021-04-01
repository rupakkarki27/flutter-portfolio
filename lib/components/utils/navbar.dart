import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/nav_button.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/screens/article_page.dart';
import 'package:portfolio/screens/index_page.dart';
import 'package:portfolio/responsive.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This children list are the HOME and ARTICLES link on the Navbar
    var children = [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IndexPage(),
            ),
          );
        },
        child: NavButton(
          navText: "Home",
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticlePage(),
            ),
          );
        },
        child: NavButton(
          navText: "Articles",
        ),
      ),
    ];
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 120,
          right: 120,
        ),

        // Check to see if the screen we are on is desktop, tablet, or mobile
        // and render the appropriate widgets using ternary operator
        // if the screen is either a desktop or tablet, render the navbar in Row
        // if the screen is mobile, render the navbar in Column

        child: (Responsive.isDesktop(context) || Responsive.isTablet(context))
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _navHome(context),
                  Row(children: children),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _navHome(context),
                  Column(children: children),
                ],
              ),
      ),
    );
  }

  Widget _navHome(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndexPage(),
          ),
        );
      },
      child: Text(
        kName,
        style: TextStyle(
          color: kPrimaryTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
