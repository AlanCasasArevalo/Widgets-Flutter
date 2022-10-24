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
                alignment: Alignment.center,
                // alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    top: 10,
                    right: 16,
                    bottom: 20,
                    child: Container(
                      height: 150,
                      color: Colors.green,
                      child: Text("GREEN"),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Text(
                    "Hola",
                    textAlign: TextAlign.end,
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
