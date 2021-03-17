import 'package:flutter/material.dart';
import 'app.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  static final myPageKey = GlobalKey<_MyAppState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(key: myPageKey),
    );
  }
}


