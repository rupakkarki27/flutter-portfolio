import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/nav_button.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/screens/article_page.dart';
import 'package:portfolio/screens/index_page.dart';

class Navbar extends StatelessWidget {
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
            _navHome(context),
            Row(
              children: [
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
              ],
            )
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
