import 'package:flutter/material.dart';

import 'screens/index_page.dart';

// Entrypoint of the application
void main() => runApp(
      MaterialApp(
        title: "Rupak Karki | Software Engineer",
        debugShowCheckedModeBanner: false,
        home: IndexPage(),
        theme: ThemeData(
          fontFamily: "Jost",
        ),
      ),
    );
