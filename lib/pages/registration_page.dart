import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget.dart';
import 'text_button.dart';
import 'rounded_button.dart';
import '../app.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key}) : super(key: key);

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
          children: <Widget> [
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
          ]
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
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
          ]
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            TextWidget(text: 'Пароль'),
            InputFieldWidget(
              obscureText: true,
              hintText: '* * * * * * * * ',
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
          ]
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            TextWidget(text: 'Уже зарегистрированы?'),
            TextButtonWidget(
              text: 'Вход',
              textStyle: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
              ),
              fn: () {MyApp().myPageKey.currentState.controller.animateTo(0);}
            ),
          ]
        ),
        RoundedButtonWidget(text: 'Зарегистрироваться'),
      ],
    );
  }
}