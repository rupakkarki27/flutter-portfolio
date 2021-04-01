import 'package:flutter/material.dart';
import 'package:portfolio/callbacks/article_callbacks.dart';
import 'package:portfolio/components/utils/article_card.dart';

class ArticleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArticleCard(
          datePublished: "November 20, 2020",
          articleTitle: "Detecting objects in Flutter",
          articleBody: "Using TfLite and SSD Mobilenet in Flutter.",
          callback: objectDetectorCallback,
        ),
        ArticleCard(
          datePublished: "October 17, 2020",
          articleTitle: "Learning to Flutter",
          articleBody:
              "How I built a Covid-19 dashboard application in less than a week of learning Flutter.",
          callback: learningToFlutterCallback,
        ),
        ArticleCard(
          datePublished: "November 29, 2020",
          articleTitle: "Approaching a Machine Learning Problem",
          articleBody: "A beginner friendly guide.",
          callback: machineLearningCallback,
        ),
        ArticleCard(
          datePublished: "October 10, 2020",
          articleTitle: "Building a Deep Learning Flower Classifier",
          articleBody:
              "How I built a web app that can classify from five flower types using Python and Streamlit.",
          callback: deepLearningFlowerCallback,
        ),
      ],
    );
  }
}
