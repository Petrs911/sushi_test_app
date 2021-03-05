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
    final _Tabs = <Container>[
      Container(
        width: 55.0,
        child: Tab(child: Text('Войти', 
          style: TextStyle(color: Colors.black,
          fontSize: 18.0, 
          fontWeight: FontWeight.w700)))),
      Container(
          width: 80.0,
          child: Tab(child: Text('Зарегистрироваться', 
            style: TextStyle(color: Colors.black,
            fontSize: 18.0, 
            fontWeight: FontWeight.w700)))),
    ];

    return DefaultTabController(
      length: _Tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
          child: AppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
            ),
            bottom: TabBar(
              tabs: _Tabs,
              indicator: UnderlineTabIndicator(
                //indicatorColor: Colors.red,
                borderSide: BorderSide(width: 4.0, color: Colors.red),
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