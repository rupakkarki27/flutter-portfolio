import 'package:flutter/material.dart';

const kBackgroundColor1 = Color.fromRGBO(28, 42, 52, 1);
const kBackgroundColor2 = Color.fromRGBO(17, 26, 32, 1);

const kPrimaryTextColor = Color.fromRGBO(130, 249, 161, 1);
const kNavbarLinkColor = Color.fromRGBO(236, 248, 255, 1);

const kButtonBackground = Color.fromRGBO(28, 44, 53, 1);
const kButtonBorderColor = Color.fromRGBO(124, 201, 255, 0.41);
const kChatButtonColor = Color.fromRGBO(131, 249, 162, 1);
const kFooterTextColor = Color.fromRGBO(184, 193, 199, 1);
const kArticleDateColor = Color.fromRGBO(122, 182, 217, 1);

final BoxDecoration boxDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.center,
    colors: [
      kBackgroundColor1,
      kBackgroundColor2,
    ],
  ),
);

// text for main heading
const String kHeadingText1 = "Hi, I'm Rupak.";
const String kHeadingText2 =
    "I take ideas from design to deployment, and everything in between.";

const String kName = "Rupak Karki";

final String descriptionCovidDash =
    "A dashboard application that shows the statistics of Covid-19 according to country. Uses external API calls to retrive the data. Powered by Flutter.";
final String descriptionPortfolio =
    "Personal portfolio site built entirely in Flutter. You're on it right now. Responsive and beautiful.";
final String descriptionVerbose =
    "A writing application where you can unleash your creativity and share amazing things with everyone. Backend and Frontend all built by me. COMING SOON";
final String descriptionObjectDetector =
    "An application capable of detecting objects using the phone's camera. Built using Flutter and Tensorflow. Capable of detecting objects live.";

final String kContactText1 = "Got interesting ideas?";
final String kContactText2 =
    "Let's have a conversation! \nI'd love to hear what you're working on and find a way to work together.";

final String kFooterText1 = "Developed by Rupak Karki.\nPowered by Flutter.";
