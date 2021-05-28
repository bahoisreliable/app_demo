import 'package:flutter/material.dart';
import 'package:new_project_demo/my_items/my_action_button.dart';
import 'package:new_project_demo/my_items/my_float_button.dart';
import 'package:new_project_demo/my_items/my_navbar.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  double size = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Text("Timeline"),
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
                      child: AppBar(
                        centerTitle: true,
                        backgroundColor: Colors.white,
                        title: Text(
                          "Timeline",
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

postOlustur(int index) {
  return Container(
    height: 150,
    child: Column(children: [
      Text(
        "başlık $index",
        style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Text("icerik $index")
    ]),
  );
}
