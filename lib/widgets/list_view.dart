import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // Igual que con el componente SingleChildScrollView, este componente tiene el parametro physics: AlwaysScrollableScrollPhysics(), y funciona igual que el otro widget
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Text("Hola"),
          Text("Hola"),
          Text("Hola"),
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
    );
  }
}