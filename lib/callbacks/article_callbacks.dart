import 'package:url_launcher/url_launcher.dart';

void deepLearningFlowerCallback() async {
  String url =
      "https://medium.com/swlh/building-a-deep-learning-flower-classifier-cfdbd59f0210";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void learningToFlutterCallback() async {
  String url = "https://rupakkarki.medium.com/learning-to-flutter-291a8c615ac5";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void machineLearningCallback() async {
  String url =
      "https://towardsdatascience.com/approaching-a-machine-learning-problem-a8c14a4dd8bf";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void objectDetectorCallback() async {
  String url =
      "https://towardsdatascience.com/detecting-objects-in-flutter-4fe8cfccef14";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}
