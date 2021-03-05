import 'package:flutter/material.dart';

import 'text_widget.dart';


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

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
              //fillColor: Color(0xFFF2F2F2),
              filled: true,
              hintText: 'madinasalik@yandex.ru',
              hintStyle: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
              ),
              //labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }
}
