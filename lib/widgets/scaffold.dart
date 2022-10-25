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
      // Este parametro es para permitir el gesto de arrastrar en el menu lateral o no por defecto es true
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      onDrawerChanged: (isDrawerOpen) => {
        print("El drawer esta abierto $isDrawerOpen")
      },
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
      onEndDrawerChanged: (isDrawerOpen) => {
        print("El enddrawer esta abierto $isDrawerOpen")
      },
      bottomNavigationBar: Container(
        height: 100,
        color: Color(0xfff0f0f0),
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
      // Esto sirve para poder localizar el boton flotante
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          // Se pueden ver los iconos que hay en esta url https://api.flutter.dev/flutter/material/Icons-class.html
          Icons.add,
          size: 30,
        ),
        onPressed: () => {
          print("se ha pulsado el boton")
        },
      ),
    );
  }
}
