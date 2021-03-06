import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget { 
  const TextWidget({
    Key key, 
    this.text, 
    this.fontWeight = FontWeight.w600, 
    this.fontSize = 15.0
    }) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black.withOpacity(0.4),
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}