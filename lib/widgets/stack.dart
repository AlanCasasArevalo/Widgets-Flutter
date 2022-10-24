import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
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
            Text(
              "Hola",
            ),
          ],
        ),
      ),
    );
  }
}
