import 'package:flutter/material.dart';

class MyCustomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.yellow),
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
