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
                  // Los widgets Positioned solo podemos usarlos en los stacks
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 100,
                      color: Colors.green,
                      child: Text("GREEN"),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      "Hola",
                      textAlign: TextAlign.end,
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
