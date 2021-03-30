import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
          ),
          onPressed: () async {
            String url = "https://www.linkedin.com/in/rupakkarki";
            await canLaunch(url)
                ? await launch(url)
                : throw "Could not launch $url";
          },
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.medium,
            color: Colors.white,
          ),
          onPressed: () async {
            String url = "https://rupakkarki.medium.com/";
            await canLaunch(url)
                ? await launch(url)
                : throw "Could not launch $url";
          },
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
          onPressed: () async {
            String url = "https://github.com/rupakkarki27";
            await canLaunch(url)
                ? await launch(url)
                : throw "Could not launch $url";
          },
        ),
      ],
    );
  }
}
