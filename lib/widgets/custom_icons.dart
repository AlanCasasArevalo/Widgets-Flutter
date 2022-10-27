import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          CupertinoIcons.ant_fill,
          size: 50,
          color: Color(0xff894068),
        ),
      ),
    );
  }
}
