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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              child:
              Container(
                width: 170,
                height: 50,
                color: Colors.red,
              ),
            ),
            Flexible(
              child:
              Container(
                width: 170,
                height: 50,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
