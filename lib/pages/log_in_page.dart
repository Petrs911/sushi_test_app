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
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        //const SizedBox(height: 24.0),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            filled: true,
            icon: Icon(Icons.email),
            hintText: 'Your email address',
            labelText: 'E-mail',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}