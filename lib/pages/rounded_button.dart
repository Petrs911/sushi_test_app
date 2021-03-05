import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  RoundedButtonWidget({this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("TEST BUTTON",
          style: TextStyle(fontSize: 14.0)),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(140.0, 50.0),
          primary: Color(0xFFDB00FF),
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
        )),
      )
    );
  }
}