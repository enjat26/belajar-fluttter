// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fundamental/card_widget.dart';
import 'package:fundamental/cloning_telkomsel.dart';
import 'package:fundamental/container_widget.dart';
import 'package:fundamental/listview_widget.dart';
import 'package:fundamental/row_column.dart';
import 'package:fundamental/stateful_widget.dart';
import 'package:fundamental/text_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fundamental Flutter"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextWidget();
                }));
              },
              child: Text('Text Widget'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RowColumn();
                }));
              },
              child: Text("Row Column"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContainerWidget();
                }));
              },
              child: Text("Container Widget"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CobaStateful();
                }));
              },
              child: Text("Stateful Widget"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CardWidget();
                }));
              },
              child: Text("Card Widget"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListviewWidget();
                }));
              },
              child: Text("Listview Widget"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CloningTelkomsel();
                }));
              },
              child: Text("Clonning Telkomsel"),
            )
          ],
        ),
      ),
    );
  }
}
