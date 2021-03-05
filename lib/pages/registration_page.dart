import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget.dart';
import 'text_button.dart';
import 'rounded_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          TextWidget(text: 'Ваше имя'),
          InputFieldWidget(
            obscureText: false,
            hintText: 'Имя',
            hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          TextWidget(text: 'Адрес электронной почты'),
          InputFieldWidget(
            obscureText: false,
            hintText: 'Почта',
            hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          TextWidget(text: 'Пароль'),
          InputFieldWidget(
            obscureText: false,
            hintText: '* * * * * * * * ',
            hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
        ),
        Row(
          TextWidget(text: 'Уже зарегистрированы?'),
          TextButtonWidget(
            text: 'Забыли пароль?',
              textStyle: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
              ),
          ),
        ),
        RoundedButtonWidget(text: 'Зарегистрироваться'),
      ],
    );
  }
}