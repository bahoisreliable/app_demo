import 'package:flutter/material.dart';
import 'package:new_project_demo/my_items/custom_dialog_box.dart';

class MyFloatingButton extends StatefulWidget {
  @override
  _MyFloatingButtonState createState() => _MyFloatingButtonState();
}

class _MyFloatingButtonState extends State<MyFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white70,
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return CustomDialogBox();
            });
      },
      child: Text(
        "New",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
