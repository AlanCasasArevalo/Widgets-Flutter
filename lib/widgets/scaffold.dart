import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(),
                ),
              ),
            ),
            Text("Hola amigo como estas"),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
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
      onDrawerChanged: (isDrawerOpen) =>
          {print("El drawer esta abierto $isDrawerOpen")},
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
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
        onPressed: () => {print("se ha pulsado el boton")},
      ),
    );
  }
}
