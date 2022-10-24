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
              child: FlutterLogo(
                size: 200,
              ),
            ),
            Flexible(
              flex: 2,
              child: FlutterLogo(
                size: 250,
              ),
            ),
            Flexible(
              child: FlutterLogo(
                size: 3000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
