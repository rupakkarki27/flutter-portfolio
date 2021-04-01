import 'package:flutter/material.dart';
import 'package:portfolio/components/utils/footer_text.dart';
import 'package:portfolio/constants/constants.dart';

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
          child: Wrap(
            children: [
              FooterText(),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Text(
                    "rupakkarki123@gmail.com",
                    style: TextStyle(
                      color: kFooterTextColor,
                    ),
                  ),
                  Text(
                    "rupak@rupakkarki.com.np",
                    style: TextStyle(
                      color: kFooterTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
