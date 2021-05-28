import 'package:flutter/material.dart';

class ManageListPage extends StatefulWidget {
  @override
  _ManageListPageState createState() => _ManageListPageState();
}

class _ManageListPageState extends State<ManageListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close)),
              ),
              Text("Change Manage List")
            ],
          ),
        ),
      ),
    );
  }
}
