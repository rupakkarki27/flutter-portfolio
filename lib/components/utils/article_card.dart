import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class ArticleCard extends StatelessWidget {
  final String datePublished;
  final String articleTitle;
  final String articleBody;
  final VoidCallback callback;

  const ArticleCard({
    this.datePublished,
    this.articleTitle,
    this.articleBody,
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 700,
      padding: const EdgeInsets.only(
        left: 40.0,
        right: 40.0,
        top: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            datePublished,
            style: TextStyle(
              color: kArticleDateColor,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            articleTitle,
            style: TextStyle(
              color: kNavbarLinkColor,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            articleBody,
            style: TextStyle(
              color: kNavbarLinkColor,
            ),
          ),
          SizedBox(height: 10.0),
          GestureDetector(
            onTap: callback,
            child: Text(
              "Read More...",
              style: TextStyle(
                color: kArticleDateColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
