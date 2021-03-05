import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 50.0),
        TextWidget(text: 'Password', font: FontWeight.w900),
        InputFieldWidget(hintText: 'madinasalik@yandex.ru', obscureText: false),
        InputFieldWidget(hintText: '********', obscureText: true),
      ],
    );
  }
}
