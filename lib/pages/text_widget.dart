import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text = "Рандом";
  
  TextWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black.withOpacity(0.4),
          fontWeight: FontWeight.w900,
          fontSize: 17.0,
        ),
      ),
    );
  }
}