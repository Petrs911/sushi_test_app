import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({Key key, this.text, this.textStyle}) : super(key: key);

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20.0), 
      child: TextButton(
        child: Text(text,
          style: textStyle /*??= TextStyle(fontStyle: FontStyle.italic)*/,
        ),
        style: TextButton.styleFrom(
          primary: Colors.red,
        ),
        onPressed: () {},
      )
    );
  }
}