import 'package:flutter/material.dart';

import 'index_page.dart';

// Entrypoint of the application
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IndexPage(),
        theme: ThemeData(
          fontFamily: "Jost",
        ),
      ),
    );
