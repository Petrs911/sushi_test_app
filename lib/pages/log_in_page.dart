import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget.dart';
import 'text_button.dart';
import 'rounded_button.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        //SizedBox(height: 50.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
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
          
          //SizedBox(height: 50.0),
            
          ]
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            TextButtonWidget(
            text: 'Забыли пароль?',
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
        //SizedBox(height: 30.0),
        
        //SizedBox(height: 60.0),
        RoundedButtonWidget(text: 'Войти'),
      ],
    );
  }
}
