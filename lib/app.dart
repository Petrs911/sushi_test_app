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
    
    return DefaultTabController(
      length: _Tabs.length,
      child: Scaffold(
       appBar: AppBar(
       backgroundColor: const Color(0xFF3baee7),
       title: Text("Jobs"),
        ),
      body: Column(      // Column
         children: <Widget>[
          Container(
            color: Colors.deepOrangeAccent,        // Tab Bar color change
             child: TabBar(           // TabBar
             unselectedLabelColor: Colors.lightBlue[100],
             labelColor: const Color(0xFF3baee7),
             indicatorWeight: 2,
             indicatorColor: Colors.blue[100],
             tabs: <Widget>[               
               Tab(
                 text: "All Jobs",
               ),
               Tab(
                 text: "Most Recent",
               ),
               Tab(
                 text: "Saved Jobs",
               )
             ],
           ),
         ),
         Expanded(
             flex: 3,
             child: TabBarView(         // Tab Bar View
             physics: BouncingScrollPhysics(),
             controller: tabController,
             children: <Widget>[AllJobScreen(), AllJobScreen(), AllJobScreen()],
               ),
            ),
         ],
    ),
      
      /*Scaffold(
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
      ),*/
    ));
  }
}