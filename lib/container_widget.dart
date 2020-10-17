import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      body: Container(
        color: Colors.green,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.purple,
          margin: EdgeInsets.only(bottom: 10),
        ),
      ),
    );
  }
}
