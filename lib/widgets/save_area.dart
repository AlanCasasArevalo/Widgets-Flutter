import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Al poner el SafeArea como contenedor del container, se ve raro debido a que el SafeArea no hace bien
      // su trabajo dejando partes en blanco justo por encima del texto Hello
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text("Hello")
            ],
          ),
        ),
      ),
    );
  }
}
