import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // Si ponemos al contenedor de la imagen unas dimensiones, las dimensiones definidas en la
          // Imagen sera ignorada cogiendo solo las del padre
          height: 200,
          width: 300,
          color: Colors.grey,
          child: Image.asset(
            'assets/images/wolverine_4.png',
            height: 600,
            width: 400,
            // El parametro cover hace que la imagen se expanda hasta alcanzar el alto y ancho posible definido por nosotros
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
