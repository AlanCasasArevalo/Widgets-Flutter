import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        // Se utiliza SizedBox cuando solo quieres definir ancho y alto de un contenedor, sin mas parametros
        child: SizedBox(
          width: 300,
          height: 500,
          child: Center(
            child: Container(
              width: 250,
              height: 250,
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
        ),
      ),
    );
  }
}
