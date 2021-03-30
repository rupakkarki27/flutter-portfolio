import 'package:url_launcher/url_launcher.dart';

void covidDashCallback() async {
  String url = "https://github.com/rupakkarki27/covid19_dashboard";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void portfolioCallback() async {
  String url = "https://github.com/rupakkarki27/rupakkarki27.github.io";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void verboseCallback() async {
  String url = "https://github.com/rupakkarki27/covid19_dashboard";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}

void objectDetectorCallback() async {
  String url = "https://github.com/rupakkarki27/object_detection";
  await canLaunch(url) ? await launch(url) : throw "Could not launch $url";
}
