import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/navbar.dart';
import 'package:portfolio/constants/constants.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            top: 20,
          ),
          decoration: boxDecorationGradient,
          child: Column(
            children: <Widget>[
              Navbar(),
            ],
          ),
        ),
      ),
    );
  }
}
