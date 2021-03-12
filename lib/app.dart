import 'package:flutter/material.dart';

import 'themes/style.dart';
import 'pages/log_in_page.dart';
import 'pages/registration_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
  with SingleTickerProviderStateMixin {
  
  TabController _controller;

  @override 
  void initState() {
    super.initState();
    _controller = TabController(length: _tabs.length, vsync: this);
  }
  final _pages = <Widget>[
  LogInPage(),
  RegistrationPage(),
  ];

  final _tabs = <Widget>[
  Expanded(child: Text('Войти', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w700))),
  Expanded(flex: 2, child: Text('Зарегистрироваться', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w700))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              isScrollable: true,
              controller: _controller,
              tabs: _tabs,
              indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 4.0, color: Color(0xFFD11317)), insets: EdgeInsets.symmetric(horizontal: 16.0)),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: appLogo,
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: _pages,
        ),
        backgroundColor: Color(0xFFF2F2F2),
    );
  }
}
