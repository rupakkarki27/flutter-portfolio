import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class LearnMoreButton extends StatelessWidget {
  final VoidCallback callback;

  LearnMoreButton({this.callback});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: callback,
        child: Container(
          height: 40,
          width: 110,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kButtonBorderColor,
            ),
            color: kButtonBackground,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Center(
            child: Text(
              "Learn More",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
