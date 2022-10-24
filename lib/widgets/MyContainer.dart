import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        // Se utiliza SizedBox cuando solo quieres definir ancho y alto de un contenedor, sin mas parametros
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40
          ),
          // width: 250,
          // height: 250,
          color: Colors.amber,
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            bottom: 20,
            right: 20,
          ),
          child: Text(
            'Hola amundio',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
