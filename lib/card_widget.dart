import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Card Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard("Unit", Icons.ac_unit),
            buildCard("Alarm", Icons.access_alarm),
          ],
        ),
      ),
    );
  }

  Card buildCard(String text, IconData iconData) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              color: Colors.red,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
