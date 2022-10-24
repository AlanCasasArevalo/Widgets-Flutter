import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            //color: Colors.amber,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              /*
              bordes en todos los lados de 10
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              bordes en los lados designados
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.elliptical(50, 75),
              ),
              bordes en los lados vertical
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
                bottom: Radius.circular(50)
              ),
              bordes en los lados horizontal
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20),
                  left: Radius.circular(50)
              ),
              Circular
              shape: BoxShape.circle
               */
              shape: BoxShape.circle,
              // Sombras
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(
                      .50,
                  ),
                  blurRadius: 25,
                  offset: Offset(-10, 20)
                  // Este parametro es para que el sombreado se salga del contenedor
                  // spreadRadius: 50
                ),
                /*
                BoxShadow(
                  color: Colors.greenAccent.withOpacity(
                      .99,
                  ),
                  blurRadius: 10,
                ),
                 */
              ],
            ),
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
    );
  }
}
