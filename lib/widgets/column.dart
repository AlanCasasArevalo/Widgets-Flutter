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
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hola Amundio'),
                Text(
                  'Como te esta',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Tratando la vida'),
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
