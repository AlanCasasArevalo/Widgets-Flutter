import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Image.asset(
            'assets/images/wolverine_4.png',
            height: 300,
            width: 400,
            // El parametro fit permite hacer que la imagen se deforme hasta alcanzar los valores que le pusimos nosotros
            // como alto y ancho
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
