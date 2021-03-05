import 'input_field_widget.dart';
import 'package:flutter/material.dart';

class TestWidget extends InputFieldWidget {
  
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 17.0,
        ),
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: 'dsadwadawdaswa',
          hintStyle: TextStyle(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 17.0,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}