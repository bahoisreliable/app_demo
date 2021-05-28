import 'package:flutter/material.dart';
import 'package:new_project_demo/my_items/my_action_button.dart';
import 'package:new_project_demo/my_items/my_float_button.dart';
import 'package:new_project_demo/my_items/my_navbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double size = 50;
  String dropdownValue = 'Sabah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 20),
              child: ListView.builder(itemCount: 20, itemBuilder: (context, index) => postOlustur(index + 1)),
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
                        "My Area",
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
      floatingActionButton: MyFloatingButton(),
      bottomNavigationBar: MyNavBar(),
    );
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
}
