import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  // define the root of the assets to dynamically
  // generate the full path
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

// Returns a list of Image widgets built using the paths dynamically
// with the use of the `map` function
// Using regular png images because websafe_svg package had some issues
  List<Widget> _skillsList() {
    return _iconNames.map((iconName) {
      // for each item in the list, join the root directory and the name
      // to form the full path to that asset.
      // Finally convert to list to insert into the Row widget.
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
