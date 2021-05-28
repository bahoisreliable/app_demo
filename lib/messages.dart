import 'package:flutter/material.dart';
import 'package:new_project_demo/my_items/my_action_button.dart';
import 'package:new_project_demo/my_items/my_float_button.dart';
import 'package:new_project_demo/my_items/my_navbar.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  double size = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Text("Messages"),
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
                          "Messages",
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
