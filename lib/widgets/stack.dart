import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              color: Colors.grey,
              width: 500,
              height: 500,
              child: Stack(
                // No es lo mismo tener AlignmentDirectional que Alignment debido a que se comportan teniendo en cuenta la direccion en la que comienzan
                // a escribir en los paises de escritura arabe por ejemplo de derecha a izq
                alignment: AlignmentDirectional.topEnd,
                // alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      "Hola",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
