import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/footer_icons.dart';
import 'package:portfolio/components/utils/footer_text.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 40.0,
        ),
        child: Container(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterText(),
              FooterIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
