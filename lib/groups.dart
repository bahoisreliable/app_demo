import 'package:flutter/material.dart';
import 'package:new_project_demo/my_items/my_action_button.dart';
import 'package:new_project_demo/my_items/my_float_button.dart';
import 'package:new_project_demo/my_items/my_navbar.dart';

class GroupsPage extends StatefulWidget {
  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  double size = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Text("Groups"),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: GestureDetector(
                    onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
                      setState(() {
                        if (dragUpdateDetails.localPosition.dy > 100) {
                          size = dragUpdateDetails.localPosition.dy / 2;
                        }
                      });
                    },
                    onVerticalDragEnd: (DragEndDetails dragEndDetails) {
                      setState(() {
                        size = 50;
                      });
                    },
                    child: Container(
                      height: size,
                      color: Colors.red,
                      child: AppBar(
                        centerTitle: true,
                        backgroundColor: Colors.white,
                        title: Text(
                          "Groups",
                          style: TextStyle(color: Colors.black),
                        ),
                        actions: [
                          MyActionButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyNavBar(),
        floatingActionButton: MyFloatingButton());
  }
}
