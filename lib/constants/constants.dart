import 'package:flutter/material.dart';

const kBackgroundColor1 = Color.fromRGBO(28, 42, 52, 1);
const kBackgroundColor2 = Color.fromRGBO(17, 26, 32, 1);

const kPrimaryTextColor = Color.fromRGBO(130, 249, 161, 1);
const kNavbarLinkColor = Color.fromRGBO(236, 248, 255, 1);

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
