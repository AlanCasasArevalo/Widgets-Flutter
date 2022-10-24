import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Flexible(
              child:
              Text("hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como hola como ")
              /*
              Container(
                width: 600,
                height: 50,
                color: Colors.red,
              ),
               */
            ),
          ],
        ),
      ),
    );
  }
}
