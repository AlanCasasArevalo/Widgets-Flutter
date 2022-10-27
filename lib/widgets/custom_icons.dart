import 'package:flutter/material.dart';

class MyCustomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.accessible_forward_sharp,
          size: 50,
          color: Color(0xff894068),
          //Este parametro de semanticLabel sirve para aplicaciones de accesibilidad
          semanticLabel: 'Icono silla de ruedas corriendo',
        ),
      ),
    );
  }
}
