import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row Column"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Teks1"),
            Text("Teks2"),
            Text("Teks3"),
            Row(
              children: <Widget>[
                Text("Row1"),
                Text("Row2"),
                Text("Row3"),
              ],
            )
          ],
        ));
  }
}
