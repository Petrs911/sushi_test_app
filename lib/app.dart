import 'package:flutter/material.dart';

import 'themes/style.dart';
import 'pages/log_in_page.dart';
import 'pages/registration_page.dart';

class MyApp extends StatelessWidget {
  const MyApp ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Pages = <Widget>[
      LogInPage(),
      RegistrationPage(), 
    ];
    final _Tabs = <Widget>[
      Tab(child: Text('Войти', 
            style: TextStyle(color: Colors.black,
            fontSize: 17.0, 
            fontWeight: FontWeight.w700))),

      Tab(child: Text('Зарегистрироваться', 
          style: TextStyle(color: Colors.black,
          fontSize: 17.0, 
          fontWeight: FontWeight.w700))),
    ];

    return DefaultTabController(
      length: _Tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
          child: AppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
                bottomRight: Radius.circular(80.0),
              ),
            ),
            bottom: TabBar(
              tabs: _Tabs,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 4.0, color: Color(0xFFD11317)),
                insets: EdgeInsets.symmetric(horizontal:16.0)
              ),
              
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: appLogo,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: _Pages,
        ),
        backgroundColor: Color(0xFFF2F2F2),
      ),
    );
  }
}