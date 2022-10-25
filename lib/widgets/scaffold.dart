import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        // Color de la barra de navegacion
        backgroundColor: Colors.grey,
        // Estilo del texto de la barra de navegacion
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        // Widget de la barra de navegacion (puede ser un text, un row, un column lo que sea un widget)
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Flutter App ",
            ),
            Text(
              "Best",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
