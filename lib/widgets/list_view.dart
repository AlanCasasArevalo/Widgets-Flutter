import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            TextField(),
            Text("Hola"),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.blue,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Text("Hola"),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.blue,
            ),
            Text("Hola"),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Text("Hola"),
          ],
        ),
      ),
    );
  }
}
