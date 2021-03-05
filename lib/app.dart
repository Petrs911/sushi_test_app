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
    final _Tabs = <Tab>[
      Tab(text: 'Войти'),
      Tab(text: 'Зарегистрироваться'),
    ];

    return DefaultTabController(
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