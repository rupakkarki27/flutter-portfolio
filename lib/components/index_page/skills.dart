import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Skills extends StatelessWidget {
  final String _rootPath = "assets/skills/";

  final _iconNames = [
    "flutter.svg",
    "python.svg",
    "javascript.svg",
    "expressjs.svg",
    "reactjs.svg",
    "nodejs.svg",
    "azure.svg",
    "figma.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _skillsList(),
      ),
    );
  }

  List<Widget> _skillsList() {
    return _iconNames.map((iconName) {
      String assetName = _rootPath + iconName;
      return Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          right: 25.0,
          left: 25.0,
          bottom: 25.0,
        ),
        child: WebsafeSvg.asset(
          assetName,
          height: 50,
          width: 50,
        ),
      );
    }).toList();
  }
}
