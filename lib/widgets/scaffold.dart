import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        backgroundColor: Color(0xff01579b),
        // Estilo del texto de la barra de navegacion
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Flutter App ",
            ),
            Text(
              "Best",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      // Se pueden tener 2 Drawers uno a la derecha y otro a la izq
      endDrawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              "Texto",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              "Texto",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
