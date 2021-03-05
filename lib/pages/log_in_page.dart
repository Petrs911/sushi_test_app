import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'input_field_widget';


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
        InputFieldWidget(),
        /*Padding(
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
        ),*/
      ],
    );
  }
}
