import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 55),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              // Con este parametro se hace que la columna ocupe solo la altura que necesitan sus hijos, no toda la altura.
              // Esto solo funciona si el contenedor de column esta contenido en un contenedor center
              // mainAxisSize: MainAxisSize.min,
              // Este parametro mainAxisAlignment sirve para poder alinear los elementos entre si
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Hola Amundio'),
                const Text(
                  'Como te esta',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text('Tratando la vida'),
                Container(
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
