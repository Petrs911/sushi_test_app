import 'package:flutter/matrial.dart';

class InputFieldWidget extends StatefulWidget {
  const InputFieldWidget({Key key}) : super(key: key);
  
  @override
  <StatefulWidget> createState() => _InputFieldWidget();
}

class _InputFieldWidget extends State<InputFieldWidget> {
  
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
          hintText: 'madinasalik@yandex.ru',
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