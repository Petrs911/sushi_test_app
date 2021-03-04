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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              //icon: Icon(Icons.email),
              hintText: 'Your email address',
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }
}