import 'package:flutter/material.dart';
import 'package:portfolio/components/article_page/article_section.dart';
import 'package:portfolio/components/index_page/footer_section.dart';
import 'package:portfolio/components/utils/navbar.dart';
import 'package:portfolio/constants/constants.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          decoration: boxDecorationGradient,
          child: Column(
            children: [
              Navbar(),
              Text(
                "Articles",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ArticleSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
