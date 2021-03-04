import 'package:flutter/material.dart';

import 'themes/style.dart';
import 'pages/log_in_page.dart';

class MyApp extends StatelessWidget {
  const MyApp ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350.0),
        child: AppBar(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: appLogo,
            ),
          ),
        ),
      ),
      body: LogInPage(),
    );
  }
}