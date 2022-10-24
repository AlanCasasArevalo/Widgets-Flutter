import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 60,
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.yellow,
          ),
        ],
      ),
      /*
      child: Center(
        // Si el contenedor que contiene la celda, NO tiene una altura, la altura sera calculada con el elemento mas alto de la celda
        child: Container(
          color: Colors.green,
          // height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Este parametro hace que los elementos dentro de la celda se alineen segun conveniencia
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 60,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
       */
    );
  }
}
