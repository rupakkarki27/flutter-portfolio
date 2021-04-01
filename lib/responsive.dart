import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  // These boolean methods will help us decide on which
  // widgets to use depending on the size of the screen

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;
  @override
  Widget build(BuildContext context) {
    // The layout builder is used to build the required
    // layout depending on the size of the screen

    return LayoutBuilder(builder: (context, constraints) {
      if (isDesktop(context)) {
        return desktop;
      } else if (isTablet(context)) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
