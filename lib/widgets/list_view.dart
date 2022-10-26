import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // El tamaño de la ListView viene dado por el padre que la contenga si usamos un SizedBox con altura de 400
        // esa sera la altura de la lista de elementos, adecuandolo a dicha altura.
        child: SizedBox(
          height: 400,
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
      ),
    );
  }
}
