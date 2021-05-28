import 'package:flutter/material.dart';
import 'package:new_project_demo/groups.dart';
import 'package:new_project_demo/messages.dart';
import 'package:new_project_demo/my_area.dart';
import 'package:new_project_demo/my_items/navigator_route.dart';
import 'package:new_project_demo/timeline.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.cast),
                      onPressed: () {
                        Navigator.pushReplacement(context, SimpleRoute(builder: (context) => MyHomePage()));
                      }),
                  Text("My Area")
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.blueAccent),
                left: BorderSide(color: Colors.blueAccent),
                top: BorderSide(color: Colors.blueAccent),
              ))),
          Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {
                        Navigator.pushReplacement(context, SimpleRoute(builder: (context) => MessagesPage()));
                      }),
                  Text("Messages")
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.blueAccent),
                left: BorderSide(color: Colors.blueAccent),
                top: BorderSide(color: Colors.blueAccent),
              ))),
          Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.group),
                      onPressed: () {
                        Navigator.pushReplacement(context, SimpleRoute(builder: (context) => GroupsPage()));
                      }),
                  Text("Groups")
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.blueAccent),
                left: BorderSide(color: Colors.blueAccent),
                top: BorderSide(color: Colors.blueAccent),
              ))),
          Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.timeline),
                      onPressed: () {
                        Navigator.pushReplacement(context, SimpleRoute(builder: (context) => TimelinePage()));
                      }),
                  Text("Timeline")
                ],
              ),
              decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)))
        ],
      ),
    );
  }
}
