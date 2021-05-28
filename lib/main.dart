import 'package:flutter/material.dart';
import 'package:new_project_demo/groups.dart';
import 'package:new_project_demo/messages.dart';
import 'package:new_project_demo/my_area.dart';
import 'package:new_project_demo/my_items/manage_list.dart';
import 'package:new_project_demo/timeline.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'MyArea',
      routes: {
        'MyArea': (context) => MyHomePage(),
        'Messages': (context) => MessagesPage(),
        'Groups': (context) => GroupsPage(),
        'Timeline': (context) => TimelinePage(),
        'ManageList': (context) => ManageListPage(),
      },
    );
  }
}
