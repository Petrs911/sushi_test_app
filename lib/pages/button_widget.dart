import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text),
      style: TextButton.styleFrom(
        primary: Colors.red,
      ),
      onPressed: () {},
    );
  }
}