import 'package:flutter/material.dart';

class MyActionButton extends StatefulWidget {
  @override
  _MyActionButtonState createState() => _MyActionButtonState();
}

class _MyActionButtonState extends State<MyActionButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      icon: const Icon(Icons.line_weight),
      onPressed: () {
        Navigator.pushNamed(context, "ManageList");
      },
    );
  }
}
