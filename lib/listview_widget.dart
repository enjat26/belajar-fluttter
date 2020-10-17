import 'package:flutter/material.dart';

class ListviewWidget extends StatefulWidget {
  @override
  _ListviewWidgetState createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  List<Widget> widgets = [];
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(title: Text("Listview Widget")),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("data ke" + " - " + no.toString()));
                      no++;
                    });
                  },
                  child: Text(
                    "Tambah",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      no--;
                    });
                  },
                  child: Text(
                    "Hapus",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: widgets,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
