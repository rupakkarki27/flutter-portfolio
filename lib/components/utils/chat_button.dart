import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class ChatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: kChatButtonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 18,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "Chat",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
