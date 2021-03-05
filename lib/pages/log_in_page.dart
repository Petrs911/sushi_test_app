import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget.dart';
import 'button_widget.dart';

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
        TextWidget(text: 'Адрес электронной почты', fontWeight: FontWeight.w900, fontSize: 17.0),
        InputFieldWidget(
          obscureText: false, 
          hintText: 'madinasalik@yandex.ru',
          hintStyle: TextStyle(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 17.0,
          ),
        ),
        SizedBox(height: 50.0),
        TextWidget(text: 'Пароль'),
        InputFieldWidget(
          obscureText: true, 
          hintText: '********',
          hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
        TextButtonWidget(),
      ],
    );
  }
}
