import 'package:flutter/material.dart';

class CobaStateful extends StatefulWidget {
  @override
  _CobaStatefulState createState() => _CobaStatefulState();
}

class _CobaStatefulState extends State<CobaStateful> {
  int no = 0;
  void tambahAngka() {
    setState(() {
      no = no + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                no.toString(),
                style: TextStyle(fontSize: 10 + no.toDouble()),
              ),
              RaisedButton(
                onPressed: tambahAngka,
                child: Text("Tambah Angka"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
