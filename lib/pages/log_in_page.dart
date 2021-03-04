import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage ({Key key}) : super (key: key);

  @override
  State<StatefulWidget> createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [

        SizedBox(height: 50.0),

        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 20.0),
          child: Text('Адрес электронной почты',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextFormField(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
            ),
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
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