import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String _rootPath = "assets/skills/";

  final _iconNames = [
    "flutter.png",
    "python.png",
    "javascript.png",
    "expressjs.png",
    "reactjs.png",
    "nodejs.png",
    "azure.png",
    "figma.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Wrap(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        child: Image.asset(
          assetName,
          height: 50,
          width: 50,
        ),
      );
    }).toList();
  }
}
