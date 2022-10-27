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
            // El parametro fitWidth permite hacer que la imagen se expanda en anchura hasta alcanzar la anchura que
            // le dijimos en los parametros
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
